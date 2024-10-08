from flask_restful import Resource
from flask import request, jsonify

import pandas as pd
import numpy as np
import sys
import os
notebook_dir = os.path.dirname(os.path.abspath('recommendation_system.ipynb'))
project_root = os.path.abspath(os.path.join(notebook_dir, '..'))
sys.path.append(project_root)
from services.database.vector_db_service import VectorDbService
from services.database.relational_db_service import RelationalDbService
from services.database.models import Movie

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

class MovieResource(Resource):
  def __init__(self) :
    self.db_service = RelationalDbService()
  
  def get(self, movie_id=None):
      if movie_id:
        movie = self.db_service.readOne(Movie, Movie.id == movie_id)
        return {
                'name':movie.__dict__['name'], 
                'year':movie.__dict__['release_date'], 
                'url':movie.__dict__['imbd_url'], 
                'genres':movie.__dict__['genres'],
            }
      else:
        movies_query = self.db_service.readMany(Movie)
        return [{
                'id':movie.__dict__['id'],
                'name':movie.__dict__['name'], 
                'year':movie.__dict__['release_date'], 
                'url':movie.__dict__['imbd_url'], 
                'genres':movie.__dict__['genres'],
            } for movie in movies_query]

  def post(self,action=None):
    print(action)
    if action == 'recommendation':
        return self.movie_recommendation()
     
  
  def movie_recommendation(self):
    data = request.get_json() 
    movie_to_search = data.get('movie')
    vector = np.array(movie_to_search)
  
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

    response = client.search(index='movie', body=query)

    response_list = []
    for idx, h in enumerate(response['hits']['hits']):
        id= h['_source']['movie_id']
        print(id)
        movie = self.db_service.readOne(Movie, Movie.id == id)
        if movie:
            movie_dict= movie.__dict__
            response_list.append({
                'name':h['_source']['name'], 
                'year':movie_dict['release_date'], 
                'url':h['_source']['url'], 
                'genres':movie_dict['genres'],
                'ranking':idx +1
            })
    return response_list    