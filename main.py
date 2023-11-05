from flask import Flask
from app import views
app = Flask(__name__)



app.add_url_rule(rule='/',endpoint='index',view_func=views.index)
app.add_url_rule(rule='/gcv-predict',endpoint='predict',view_func=views.prediction, methods=['POST'])


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0")