from sqlalchemy import Column, Integer, String,create_engine

from .database import Base

class Movies(Base):
    __tablename__ = 'movies'
    movieid = Column(Integer, primary_key =  True)
    judul = Column(String)
    tahun = Column(Integer)
    sutradara = Column(String)
    rating = Column(String)