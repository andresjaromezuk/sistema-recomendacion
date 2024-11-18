#%%
import pandas as pd
import random
from datetime import datetime, timedelta

# Lista de profesiones
occupations = [
    "technician", "other", "writer", "technician", "other", "executive",
    "administrator", "administrator", "student", "lawyer", "other", "other",
    "educator", "scientist", "educator", "ITBA", "programmer", "other",
    "librarian", "homemaker", "writer", "writer", "artist", "artist",
    "engineer", "engineer", "librarian", "writer", "programmer", "student",
    "ITBA", "student", "student", "administrator", "homemaker", "student"
]

# Generar dataframe
rows = []
start_date = datetime(1997, 9, 20, 0, 0, 0)  # Fecha inicial

for i in range(1, 200949):
    occupation = occupations[(i - 1) % len(occupations)]  # Alternar profesiones
    random_seconds = random.randint(0, 3600 * 24 * 365)  # Aleatorio dentro de un año
    active_since = start_date + timedelta(seconds=random_seconds)
    rows.append((i, occupation, active_since.strftime('%Y-%m-%d %H:%M:%S')))

# Crear DataFrame
df = pd.DataFrame(rows, columns=["id", "Occupation", "Active Since"])

# Mostrar las primeras filas
df.head(), df.tail()
# %%
df.to_csv('users.csv', index=False, encoding='utf-8')
# %%
