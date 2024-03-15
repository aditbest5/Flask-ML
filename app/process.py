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

def get_sumber_by_id(id):
    search_results = session.query(SumberTambang, Suppliers).join(Suppliers, SumberTambang.id_supplier == Suppliers.id).filter(Suppliers.id == id).all()

    if not search_results:
        return None

    all_results = []

    for sumber_tambang, supplier in search_results:
        sumber_tambang_dict = sumber_tambang.__dict__
        supplier_dict = supplier.__dict__

        sumber_tambang_dict = {key: value for key, value in sumber_tambang_dict.items() if not key.startswith('_')}
        supplier_dict = {key: value for key, value in supplier_dict.items() if not key.startswith('_')}

        result_dict = {**sumber_tambang_dict, **supplier_dict}

        all_results.append(result_dict)

    return all_results

def coal_yard_to_dict(coal_yard):
    coal_yard_dict = coal_yard.__dict__
    coal_yard_dict = {key: value for key, value in coal_yard_dict.items() if not key.startswith('_')}
    return coal_yard_dict

def get_coal_yard():
    search_results = session.query(CoalYard).all()

    if not search_results:
        return None

    all_results = []

    for coal_yard in search_results:
        coal_yard_dict = coal_yard_to_dict(coal_yard)
        all_results.append(coal_yard_dict)

    return all_results