from flask_restful import Resource
from flask import request
from services.database.models import Score

import pandas as pd
import numpy as np
import sys
import os

notebook_dir = os.path.dirname(os.path.abspath('recommendation_system.ipynb'))
project_root = os.path.abspath(os.path.join(notebook_dir, '..'))
sys.path.append(project_root)

from services.database.relational_db_service import RelationalDbService
from services.database.models import Score

class ScoreResource(Resource):

    def __init__(self) :
        self.db_service = RelationalDbService()

    def get(self, score_id=None):
        if score_id:
            score = self.db_service.readOne(Score, Score.id == score_id)
            return {
                    'id': score.__dict__['id'],
                    'user_id': score.__dict__['user_id'],
                    'movie_id': score.__dict__['movie_id'],
                    'rating': score.__dict__['rating'],
                    'date': score.__dict__['date']
                }
        else:
            scores_query = self.db_service.readMany(Score)
            return [{
                    'id': score.__dict__['id'],
                    'user_id': score.__dict__['user_id'],
                    'movie_id': score.__dict__['movie_id'],
                    'rating': score.__dict__['rating'],
                    'date': score.__dict__['date']
                } for score in scores_query]
        
    def post(self, action=None):
      ""