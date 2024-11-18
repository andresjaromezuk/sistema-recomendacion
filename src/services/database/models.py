# %%
from opensearchpy import Field, Boolean, Float, Integer, Document, Keyword, Text, DenseVector, Nested, Date, Object
from sqlalchemy.orm import declarative_base
from sqlalchemy import Column, Integer, String
from sqlalchemy import create_engine

Base = declarative_base()
engine = create_engine('postgresql://admin:123456@localhost:5433/data_base_1')


# %%
class User(Base):
    __tablename__ = 'users'
    id = Column(Integer, primary_key=True)
    occupation = Column(String)
    active_since = Column(String)

class Movie(Base):
    __tablename__ = 'movies'
    id = Column(Integer, primary_key=True)
    name=  Column(String)
    release_date= Column(String)
    imbd_url = Column(String)
    genres = Column(String)

class Worker(Base):
    __tablename__ = 'workers'
    id = Column(Integer, primary_key=True)
    position= Column(String)
    category =  Column(String)
    working_hours =  Column(String)
    start_date =  Column(String)

class People(Base):
    __tablename__ = 'peoples'
    id = Column(Integer, primary_key=True)
    full_name= Column(String)
    year_of_birth= Column(String)
    gender= Column(String)
    zip_code = Column(String)

class Score(Base):
    __tablename__ = 'scores'
    id = Column(Integer, primary_key=True)
    user_id = Column(String)
    movie_id = Column(String)
    rating = Column(Integer)
    date = Column(String)

Base.metadata.create_all(engine)

class KNNVector(Field):
    name = "knn_vector"
    def __init__(self, dimension, method, **kwargs):
        super(KNNVector, self).__init__(dimension=dimension, method=method, **kwargs)

method = {
    "name": "hnsw",
    "space_type": "cosinesimil",
    "engine": "nmslib"
}

index_name_1 = 'movie'

class MovieV(Document):
    movie_id = Keyword()
    url = Keyword()
    name = Text()
    created_at = Date()
    terror = Boolean()

    vector = KNNVector(
        5,
        method
    )
    class Index:
        name = index_name_1
        settings = {
                'index': {
                'knn': True
            }
        }
    def save(self, ** kwargs):
        self.meta.id = self.movie_id
        return super(MovieV, self).save(** kwargs)


index_name_2 = 'user'

class UserV(Document):
    user_id = Keyword()
    occupation = Text()
    created_at = Date()
    active_since =Text()

    vector = KNNVector(
        5,
        method
    )
    class Index:
        name = index_name_2
        settings = {
                'index': {
                'knn': True
            }
        }
    def save(self, ** kwargs):
        self.meta.id = self.user_id
        return super(UserV, self).save(** kwargs)



# %%
# from sqlalchemy import inspect
# inspector = inspect(engine)

# tables = inspector.get_table_names()

# print(tables)
# %%
