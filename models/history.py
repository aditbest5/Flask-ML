from sqlalchemy import Column, Integer, String, Date, SmallInteger,Float,ForeignKey,Enum
from .database import Base
from sqlalchemy.orm import relationship


class History(Base):
    __tablename__ = 'tbl_history'
    id = Column(Integer, primary_key =  True)
    id_supplier1 = Column(Integer,ForeignKey("tbl_suppliers.id"))
    id_supplier2 = Column(Integer,ForeignKey("tbl_suppliers.id"))
    supplier1_calorie = Column(Integer)
    supplier2_calorie = Column(Integer)
    supplier1_volume = Column(Integer)
    supplier2_volume = Column(Integer)
    biomass_calorie = Column(Integer)
    biomass_volume = Column(Integer)
    operator = Column(String)
    target_kalori = Column(Float)
   # Menambahkan relasi dengan tabel supplier
    supplier1 = relationship("Suppliers", foreign_keys=[id_supplier1])
    supplier2 = relationship("Suppliers", foreign_keys=[id_supplier2])