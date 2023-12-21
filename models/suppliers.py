from sqlalchemy import Column, Integer, String
from .database import Base

class Suppliers(Base):
    __tablename__ = 'tbl_suppliers'
    id = Column(Integer, primary_key =  True)
    Suppliers = Column(String)
