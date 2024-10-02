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
from services.database.models import Worker


class WorkerResource(Resource):
    def get(self, worker_id=None):
        db_service = RelationalDbService()
        if worker_id:
            print(type(worker_id))
            worker = db_service.readOne(Worker, Worker.id == worker_id)
            return {
                    'id': worker.id, 
                    'position': worker.position, 
                    'category' :worker.category,  
                    'working_hours': worker.working_hours,  
                    'start_date':worker.start_date  
                }
        else:
            response = []
            workers = db_service.readMany(Worker)
            for worker in workers:
                response.append({
                    'id': worker.id, 
                    'position': worker.position, 
                    'category' :worker.category,  
                    'working_hours': worker.working_hours,  
                    'start_date':worker.start_date  
                })
            return response
        
    def post(self, action=None):
      ""