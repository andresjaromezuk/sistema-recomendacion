from flask_restful import Resource
from flask import request

import pandas as pd
import numpy as np
import sys
import os

notebook_dir = os.path.dirname(os.path.abspath('recommendation_system.ipynb'))
project_root = os.path.abspath(os.path.join(notebook_dir, '..'))
sys.path.append(project_root)

from services.database.relational_db_service import RelationalDbService
from services.database.models import People

class PeopleResource(Resource):
     
    def __init__(self) :
        self.db_service = RelationalDbService()

    def get(self, people_id=None):
        if people_id:
            people = self.db_service.readOne(People, People.id == people_id)
            return {
                    'id':people.__dict__['id'], 
                    'full_name':people.__dict__['full_name'],
                    'year_of_birth':people.__dict__['year_of_birth'],
                    'gender':people.__dict__['gender'],
                    'zip_code':people.__dict__['zip_code']
                    }
        else:
            people_query = self.db_service.readMany(People)
            return [{
                    'id':people.__dict__['id'], 
                    'full_name':people.__dict__['full_name'],
                    'year_of_birth':people.__dict__['year_of_birth'],
                    'gender':people.__dict__['gender'],
                    'zip_code':people.__dict__['zip_code']
                } for people in people_query]
        
    def post(self, action=None):
      ""