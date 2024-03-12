from sqlalchemy import Column, Integer, String, Date, SmallInteger,Float,ForeignKey,Enum
from .database import Base
from enum import Enum as UserEnum
class SlaggingEnum(UserEnum):
    LOW = "LOW"
    MEDIUM = "MEDIUM"

class FoulingEnum(UserEnum):
    LOW = "LOW"
    MEDIUM = "MEDIUM"
class SumberTambang(Base):
    __tablename__ = 'tbl_sumber_tambang'
    id = Column(Integer, primary_key =  True)
    Sumber_Tambang = Column(String)
    id_supplier = Column(Integer,ForeignKey("tbl_suppliers.id"))
    GCV_ARB = Column(Integer)
    Total_Sulphur_ARB = Column(Float)
    Total_Sulphur_DAFB	= Column(Float)   
    Ash_Content_ARB	= Column(Float)
    Ash_Content_ADB = Column(Float)
    TM_ARB = Column(Float)
    IM_ADB = Column(Float)
    IDT	 = Column(Float)
    SiO2 = Column(Float)
    Al2O3 = Column(Float)
    Fe2O3 = Column(Float)
    Na2O = Column(Float)
    K2O = Column(Float)
    TiO2 = Column(Float)
    MnO2 = Column(Float)
    P2O5 = Column(Float)
    Slagging = Column(String)
    Fouling = Column(String)


