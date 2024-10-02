from flask_restful import Resource
from flask import request

import pandas as pd
import numpy as np

class PeopleResource(Resource):
    def get(self, score_id=None):
        if score_id:
            return {"message": f"Details for people {score_id}"}
        else:
            return {"message": "List of all people"}
        
    def post(self, action=None):
      ""