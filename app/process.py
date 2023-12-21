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
    print(search_result)
    return {"data": search_result}

