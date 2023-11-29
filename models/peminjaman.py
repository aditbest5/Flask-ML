from sqlalchemy import Column, Integer, String, Date, SmallInteger
from .database import Base

class Peminjaman(Base):
    __tablename__ = 'peminjaman'
    peminjamanid = Column(Integer, primary_key =  True)
    movieid = Column(Integer)
    userid = Column(Integer)
    tanggal = Column(Date)
    status = Column(SmallInteger)
