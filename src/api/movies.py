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
  def get(self, movie_id=None):
      if movie_id:
          # Lógica para obtener una película específica
          return {"message": f"Details for movie {movie_id}"}
      else:
          # Lógica para obtener una lista de películas
          return {"message": "List of all movies"}

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
    for h in response['hits']['hits']:
        response_list.append( h )
    return response_list    