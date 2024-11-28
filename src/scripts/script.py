#%%
import pandas as pd
import sys
import os
notebook_dir = os.path.dirname(os.path.abspath('recommendation_system.ipynb'))
project_root = os.path.abspath(os.path.join(notebook_dir, '..'))
sys.path.append(project_root)

from services.database.relational_db_service import RelationalDbService
from services.database.models import Worker, People, Score, User, Movie


# %%

#WORKERS

workers = pd.read_csv('../../data/trabajadores.csv')

for index, row in workers.iterrows():
  print(row)
  db_service = RelationalDbService()
  worker = Worker(
    id= int(row["id"]),
    position= row["Position"],
    category = row["Category"],
    working_hours = row["Working Hours"],
    start_date = row["Start Date"]
  )
  db_service.create(worker)
 
# %%

db_service = RelationalDbService()
workers = db_service.readMany(Worker)
print(len(workers))
for worker in workers:
    print(f'ID: {worker.id}, Position: {worker.position}, Category: {worker.category}, Working Hours: {worker.working_hours}, Start Date: {worker.start_date}')


# %%

#PERSONAS

people = pd.read_csv('../../data/personas.csv')


for index, row in people.iterrows():
  print(row)
  db_service = RelationalDbService()
  people = People(
    id = row['id'],
    full_name = row['Full Name'],
    year_of_birth = row['year of birth'],
    gender= row['Gender'],
    zip_code = row['Zip Code']
  )
  db_service.create(people)
  

# %%

db_service = RelationalDbService()
peoples = db_service.readMany(People)
for people in peoples:
    print(f'ID: {people.id}, Fullname: {people.full_name}, year_of_birth: {people.year_of_birth}, gender: {people.gender}, zip_code: {people.zip_code}')
# %%
#SCORES

scores = pd.read_csv('../../data/scores.csv')


for index, row in scores.iterrows():
  print(row)
  db_service = RelationalDbService()
  score = Score(
    id = row['id'] + 1,
    user_id = row['user_id'],
    movie_id = row['movie_id'],
    rating = int(row['rating']),
    date = row['Date']
  )
  db_service.create(score)

# %%
db_service = RelationalDbService()
scores = db_service.readMany(Score)
for score in scores:
    print(f'ID: {score.id}, user_id: {score.user_id}, movie_id: {score.movie_id}, movie_id: {score.movie_id}, zip_code: {score.rating}, date {score.date}')

# %%
#USERS

users = pd.read_csv('../../data/usuarios.csv')


for index, row in users.iterrows():
  print(row)
  db_service = RelationalDbService()
  user = User(
    id = row['id'],
    occupation = row['Occupation'],
    active_since = row['Active Since']
  )
  db_service.create(user)

# %%
db_service = RelationalDbService()
users = db_service.readMany(User)
for user in users:
    print(f'ID: {user.id}, occupation: {user.occupation} active_since: {user.active_since}')
# %%

#PELÍCULAS
# %%

movies = pd.read_csv('../../data/ml-32m/movies.csv')

for index, row in movies.iterrows():
  print(row)
  db_service = RelationalDbService()
  movie = Movie(
    id = row['movieId'],
    name=  row['title'],
    release_date= row['Release Date'],
    imbd_url = row['IMDB URL'],
    # unknown = row['unknown'],
    # action = row['Action'],
    # adventure = row['Adventure'],
    # animation = row['Animation'],
    # children = row['Children\'s'],
    # comedy = row['Comedy'],
    # crime = row['Crime'],
    # documentary = row['Documentary'],
    # drama = row['Drama'],
    # fantasy = row['Fantasy'],
    # film_noir = row['Film-Noir'],
    # horror = row['Horror'],
    # musical = row['Musical'],
    # mystery = row['Mystery'],
    # romance = row['Romance'],
    # sci_fi = row['Sci-Fi'],
    # thriller = row['Thriller'],
    # war = row['War'],
    # western = row['Western']
  )
  list_aux = []
  genres_list = ["unknown","Action","Adventure","Animation","Children's","Comedy","Crime","Documentary","Drama","Fantasy","Film-Noir","Horror","Musical","Mystery","Romance","Sci-Fi","Thriller","War","Western"]
  for g in genres_list:
    if row[g] == 1:
     list_aux.append(g)
  movie.genres = ",".join(list_aux)
  db_service.create(movie)

# %%
db_service = RelationalDbService()
movies = db_service.readMany(Movie)
for movie in movies:
    print(movie.__dict__)


