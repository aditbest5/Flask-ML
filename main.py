from flask import Flask, render_template, jsonify
from app import views, process

app = Flask(__name__)
@app.errorhandler(404)
def not_found_error(error):
    return render_template('404NotFound.html'), 404
app.add_url_rule(rule='/',endpoint='index',view_func=views.index)
app.add_url_rule(rule='/gcv-predict',endpoint='predict',view_func=views.prediction, methods=['POST'])
app.add_url_rule(rule='/blending',endpoint='blending',view_func=views.calculate)
@app.route('/get-supplier', methods=['GET'])
def show_suppliers():
    result = process.all_suppliers()
    return result
@app.route('/get-sumber', methods=['GET'])
def show_sumber():
    result = process.all_sumber()
    return result


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
