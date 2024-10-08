from flask_restful import Resource
from flask import request

import pandas as pd
import numpy as np
import sys
import os
notebook_dir = os.path.dirname(os.path.abspath('recommendation_system.ipynb'))
project_root = os.path.abspath(os.path.join(notebook_dir, '..'))
sys.path.append(project_root)
from services.database.vector_db_service import VectorDbService
from services.database.relational_db_service import RelationalDbService
from services.database.models import Score, Movie, User

client = VectorDbService().client
client.cluster.health()


ratings = pd.read_csv('../../data/scores.csv')
df_users = pd.read_csv('../../data/usuarios.csv')
df_movies = pd.read_csv('../../data/peliculas.csv')
movie_embeddings_matrix = np.load('../../data/vector_db/movie_embeddings_matrix.npy')
user_embeddings_matrix = np.load('../../data/vector_db/user_embeddings_matrix.npy')
user2Idx = np.load('../../data/vector_db/user2Idx.npy', allow_pickle=True).item()
movie2Idx = np.load('../../data/vector_db/movie2Idx.npy', allow_pickle=True).item()

df_users['userIdx'] = df_users['id'].apply(lambda x: user2Idx[x])
df_movies['movieIdx'] = df_movies['id'].apply(lambda x: movie2Idx[x])

class UserResource(Resource):
    
    def __init__(self) :
        self.db_service = RelationalDbService()

    def get(self, user_id=None):
        if user_id:
            user = self.db_service.readOne(User, User.id == user_id)
            return {
                        'id':user.__dict__['id'],
                        'occupation':user.__dict__['occupation'],
                        'active_since':user.__dict__['active_since']
                    }
        else:
            users_query = self.db_service.readMany(User)
            return [{
                    'id':user.__dict__['id'],
                    'occupation':user.__dict__['occupation'],
                    'active_since':user.__dict__['active_since']
                } for user in users_query]
        
    def post(self, action=None):
        print(action)
        if action == 'recommendation':
            return self.recommendation_for_user()
        
    def recommendation_for_user(self):
        data = request.get_json() 
        user_to_search = data.get('user')
        vector = np.array(user_to_search)

        query = {
            "size": 5,
            "query": {
                "knn": {
                "vector": {
                    "vector": vector,
                    "k" : 20
                }
                }
            }
        }

        response = client.search(index='user', body=query)

        response_list = []
        for idx, h in enumerate(response['hits']['hits']):
            user_id =  h['_id']
            user_movies = self.db_service.readOne(Score, Score.user_id == user_id, True, Score.rating.desc()).__dict__
            # user_movies = ratings[ratings['user_id'] == int(user_id)]
            # user_movies = user_movies.loc[user_movies['rating'].idxmax()]
            movie_id = user_movies['movie_id']
            movie = self.db_service.readOne(Movie, Movie.id == movie_id).__dict__
            print(movie)
            #movie_to_recomend = df_movies[df_movies['id'] == user_movies['movie_id']]
            response_list.append( {
                'name':movie['name'], 
                'year':movie['release_date'], 
                'url':movie['imbd_url'], 
                'genres':movie['genres'],
                'ranking':idx +1
            })
        return response_list