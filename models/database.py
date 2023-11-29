from dotenv import dotenv_values
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base

params = dotenv_values(".env")
Base = declarative_base()

db_user, db_host, db_password, db_port, db_name = params.get("MYSQL_USERNAME"), params.get("MYSQL_HOST"), params.get("MYSQL_PASSWORD"),params.get("MYSQL_PORT"), params.get("MYSQL_DB")
SQLALCHEMY_DATABASE_URL = f"mysql+mysqlconnector://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}"

def Database():
    engine = create_engine(
        SQLALCHEMY_DATABASE_URL
    )

    Session = sessionmaker(bind=engine)
    session = Session()
    return session