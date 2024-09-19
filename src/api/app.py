# %%
from flask import Flask, Blueprint
from flask_restful import Api
from movies import MovieResource
from users import UserResource

app = Flask(__name__)

api_v1_0_bp = Blueprint('api_v1_0_bp', __name__, url_prefix='/api')

api = Api(api_v1_0_bp)

api.add_resource(MovieResource, 
                 '/movies', 
                 '/movies/<int:movie_id>',
                 '/movies/<string:action>')
api.add_resource(UserResource, 
                 '/users', 
                 '/users/<int:movie_id>',
                 '/users/<string:action>')

app.register_blueprint(api_v1_0_bp)


if __name__ == '__main__':
    app.run(debug=True)
    


# %%
