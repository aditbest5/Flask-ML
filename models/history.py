from sqlalchemy import Column, Integer, String, Date, SmallInteger,Float,ForeignKey,Enum
from .database import Base

class History(Base):
    __tablename__ = 'tbl_history'
    id = Column(Integer, primary_key =  True)
    id_supplier1 = Column(Integer,ForeignKey("tbl_suppliers.id"))
    id_supplier2 = Column(Integer,ForeignKey("tbl_suppliers.id"))
    supplier1_calorie = Column(Float)
    supplier2_calorie = Column(Float)
    supplier1_volume = Column(Float)
    supplier2_volume = Column(Float)
    biomass_calorie = Column(Float)
    biomass_volume = Column(Float)
    operator = Column(String)
    target_kalori = Column(Float)
