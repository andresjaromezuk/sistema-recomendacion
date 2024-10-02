# %%
from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.orm import sessionmaker
from sqlalchemy.orm import sessionmaker, declarative_base

#engine = create_engine('postgresql://admin:J@r#o19b3@localhost/data_base_1')
engine = create_engine('postgresql://admin:123456@localhost:5433/data_base_1')

Session = sessionmaker(bind=engine)
Base = declarative_base()
#Crea tablas
#Base.metadata.create_all(engine)

#%%
class RelationalDbService:

  def __init__(self):
    self.session = Session()

  def readMany(self, entity):
    result = self.session.query(entity).all()
    return result

  def readOne(self, entity, query):
    result = self.session.query(entity).filter(query).first()
    return result

  def create(self, entity):
    self.session.add(entity)
    entity_save = self.session.commit()
    return entity_save

  def update(self, entity, query, fields):
    entity_to_update = self.session.query(entity).filter(query).first()
    for f in fields:
      for key, value in f.items():
        entity_to_update[key] = value
    entity_updated = self.session.commit()
    return entity_updated
  
  def delete(self, entity, query):
    entity_to_delete = self.session.query(entity).filter(query).first()
    entity_deleted = self.session.delete(entity_to_delete)
    return entity_deleted
  
