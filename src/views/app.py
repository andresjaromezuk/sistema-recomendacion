# %%
from flask import Flask, jsonify
app = Flask(__name__)


import sys
import os
notebook_dir = os.path.dirname(os.path.abspath('recommendation_system.ipynb'))
project_root = os.path.abspath(os.path.join(notebook_dir, '..'))
sys.path.append(project_root)
from services.database.vector_db_service import VectorDbService

import pandas as pd
import numpy as np

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

#Endpoint películas
try:
    @app.route('/movies', methods=["POST", "GET"])
    def get_movies():

        movie_idx_to_search = 5

        df_movies[df_movies['movieIdx'] == movie_idx_to_search]

        query = {
            "size": 5,
            "query": {
                "knn": {
                "vector": {
                    "vector": movie_embeddings_matrix[movie_idx_to_search],
                    "k" : 20
                }
                }
            }
        }

        response = client.search(index='movie', body=query)

        response_list = []
        for h in response['hits']['hits']:
            response_list.append( h )
        return response_list            
    
    #Endpoint usuarios
    @app.route('/users', methods=["POST", "GET"])
    def get_movies_by_user():

        user_idx_to_search = 1

        #df_movies[df_movies['movieIdx'] == user_idx_to_search]

        print(user_embeddings_matrix[user_idx_to_search])

        query = {
            "size": 5,
            "query": {
                "knn": {
                "vector": {
                    "vector": user_embeddings_matrix[user_idx_to_search],
                    "k" : 20
                }
                }
            }
        }

        response = client.search(index='user', body=query)

        response_list = []
        for h in response['hits']['hits']:
            user_id =  h['_id']
            user_movies = ratings[ratings['user_id'] == int(user_id)]
            user_movies = user_movies.loc[user_movies['rating'].idxmax()]
            movie_to_recomend = df_movies[df_movies['id'] == user_movies['movie_id']]
            response_list.append( movie_to_recomend.to_dict())
        return response_list      
    
    
    if __name__ == '__main__':
        app.run(debug=True)
    
except Exception as e:
  print(f"Hubo un error: {e}")


# %%
