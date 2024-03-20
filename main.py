from flask import Flask, render_template,jsonify,request
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
@app.route('/get-sumber/<int:id>', methods=['GET'])
def show_sumber(id):
    result = process.get_sumber_by_id(id)
    return jsonify(result)

@app.route('/get-coal-yard', methods=['GET'])
def show_coal_yard():
    result = process.get_coal_yard()
    return jsonify(result)
@app.route('/get-supplier-by-id/<int:id1>&<int:id2>', methods=['GET'])
def show_supplier(id1, id2):
    result = process.get_supplier_by_id(id1, id2)
    return jsonify(result)
@app.route('/store-history', methods=['POST'])
def store_history():
    data = request.json
    result = process.post_blending_result(data)
    return jsonify(result)

if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
