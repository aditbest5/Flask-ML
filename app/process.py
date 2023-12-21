## import module
from models.coal_yard import *
from models.sumber_tambang import *
from models.suppliers import *
from models.database import *
from datetime import datetime, timedelta
from dotenv import dotenv_values

#setting params
params = dotenv_values(".env")
secret_key = str(params.get("SECRET_KEY"))
algorithm = str(params.get("ALGORITHM"))

## mendefinisikan session dengan konfigurasi Database()
session = Database()

## function untuk menampilkan keseluruhan movie
def all_suppliers():
    search_result = session.query(Suppliers).all()
    suppliers_list = [{"id": supplier.id, "Suppliers": supplier.Suppliers} for supplier in search_result]

    return suppliers_list

def all_sumber():
    search_result = session.query(SumberTambang, Suppliers).join(Suppliers, SumberTambang.id_supplier == Suppliers.id).all()

    sumber_list = [{
        "id": sumber.SumberTambang.id, 
        "Sumber_Tambang": sumber.SumberTambang.Sumber_Tambang,
        "id_supplier": sumber.SumberTambang.id_supplier,
        "Suppliers": sumber.Suppliers.Suppliers,
        "GCV_ARB":sumber.SumberTambang.GCV_ARB,
        "Total_Sulphur_ARB": sumber.SumberTambang.Total_Sulphur_ARB, 
        "Total_Sulphur_DAFB":sumber.SumberTambang.Total_Sulphur_DAFB,
        "Ash_Content_ARB":sumber.SumberTambang.Ash_Content_ARB,
        "Ash_Content_ADB": sumber.SumberTambang.Ash_Content_ADB,
        "TM_ARB":sumber.SumberTambang.TM_ARB,
        "IM_ADB":sumber.SumberTambang.IM_ADB,
        "IDT":sumber.SumberTambang.IDT,
        "SiO2":sumber.SumberTambang.SiO2,
        "Al2O3":sumber.SumberTambang.Al2O3,
        "Fe2O3":sumber.SumberTambang.Fe2O3,
        "Na2O": sumber.SumberTambang.Na2O,
        "K2O": sumber.SumberTambang.K2O,
        "TiO2": sumber.SumberTambang.TiO2,
        "MnO2": sumber.SumberTambang.MnO2,
        "P2O5":sumber.SumberTambang.P2O5
        } for sumber in search_result]

    return sumber_list