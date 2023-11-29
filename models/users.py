from sqlalchemy import Column, Integer, String
from .database import Base

class Users(Base):
    __tablename__ = 'users'
    userid = Column(Integer, primary_key =  True)
    username = Column(String)
    password = Column(String)
    email = Column(String)
