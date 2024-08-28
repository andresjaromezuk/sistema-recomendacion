from opensearchpy import Field, Boolean, Float, Integer, Document, Keyword, Text, DenseVector, Nested, Date, Object

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

class Movie(Document):
    movie_id = Keyword()
    url = Keyword()
    name = Text()
    created_at = Date()
    terror = Boolean()

    vector = KNNVector(
        3,
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
        return super(Movie, self).save(** kwargs)


index_name_2 = 'user'

class User(Document):
    user_id = Keyword()
    occupation = Text()
    created_at = Date()
    active_since =Text()

    vector = KNNVector(
        3,
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
        return super(User, self).save(** kwargs)