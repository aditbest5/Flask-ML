from flask import Flask, jsonify, render_template, Response, request
import pickle
import json
import pandas as pd
from sklearn.ensemble import RandomForestClassifier
import os


def index():
    return render_template('index.html')

def calculate():
    return render_template('calculate.html')

def prediction():
    if request.method == "POST":
        target = request.form['target']
        supplier = request.form['supplier']
        sumber = request.form['sumber']
        arb = request.form['arb']
        ash = request.form['ash']
        gcv = request.form['gcv']
        best_models = {}
        for filename in os.listdir('.'):
            if filename.startswith('model_') and filename.endswith('.pkl'):
                model_name = filename.replace('model_', '').replace('.pkl', '')
                with open(filename, 'rb') as file:
                    best_model = pickle.load(file)
                    best_models[model_name] = best_model
                    
        with open('preprocessor.pkl', 'rb') as file:
            preprocessor = pickle.load(file)
            
        # load column
        with open('list_num_cols.txt', 'r') as file_7:
            num_cols = json.load(file_7)
        with open('list_cat_cols.txt', 'r') as file_8:
            cat_cols = json.load(file_8)
            
        option_values_reg = ['GCV ARB', 'TM ARB', 'Ash  Content ARB',
            'VM ADB', 'FC ADB', 'Total Sulphur ARB', 'Total Sulphur DAFB', 'C ADB',
            'H ADB', 'N ADB', 'O ADB', 'HGI', 'Slagging', 'Fouling',
            'IDT (Reducing)', 'SiO2', 'Al2O3', 'Fe2O3', 'CaO', 'MgO', 'Na2O', 'K2O',
            'TiO2', 'SO3', 'MnO2', 'P2O5']
        option_values_class = ['Fouling', 'Slagging']
        data_inf_preps ={}
        targets = {}
        data_inf = {
                'Suppliers' : supplier, 
                'Sumber Tambang':sumber,
                'TM ARB.1': arb, 
                'Ash Content ARB.1': ash, 
                'GCV ARB.1': gcv, 
            }
        data_inf = pd.DataFrame(data_inf, index=[0])
        data = []
        target_names = [
                    'GCV ARB', 'TM ARB', 'Ash  Content ARB', 'VM ADB', 'FC ADB',
                    'Total Sulphur ARB', 'Total Sulphur DAFB', 'C ADB', 'H ADB',
                    'N ADB', 'O ADB', 'HGI', 'IDT (Reducing)', 'SiO2', 'Al2O3',
                    'Fe2O3', 'CaO', 'MgO', 'Na2O', 'K2O', 'TiO2', 'SO3', 'MnO2',
                    'P2O5'
                    ]

        r2_scores = {
                    'GCV ARB': 0.93,
                    'TM ARB': 0.88,
                    'Ash  Content ARB': 0.73,
                    'VM ADB': 0.37,
                    'FC ADB': 0.75,
                    'Total Sulphur ARB': 0.59,
                    'Total Sulphur DAFB': 0.58,
                    'C ADB': 0.51,
                    'H ADB': 0.38,
                    'N ADB': 0.34,
                    'O ADB': 0.56,
                    'HGI': 0.54,
                    'IDT (Reducing)': 0.32,
                    'SiO2': 0.49,
                    'Al2O3': 0.46,
                    'Fe2O3': 0.65,
                    'CaO': 0.65,
                    'MgO': 0.73,
                    'Na2O': 0.43,
                    'K2O': 0.51,
                    'TiO2': 0.12,
                    'SO3': 0.36,
                    'MnO2': 0.13,
                    'P2O5': 0.29
                    }

        roc_auc = {
                    'Slagging': 0.89,
                    'Fouling': 0.72
                }
        if target in option_values_class : 
                data_inf_prep = preprocessor.transform(data_inf)
                data_inf_preps[target] = data_inf_prep
                y_pred_inf = best_models[target].predict(data_inf_preps[target])
                # Map predictions to 'Medium' or 'Low'
                prediction_label = 'Medium' if y_pred_inf[0] == 1 else 'Low'
                print(f'prediksi dari target {target} adalah {y_pred_inf[0]}\n')
                data_inf[f'{target} Prediction'] = prediction_label
                data.append({'roc_auc': roc_auc[target], 'prediction': prediction_label})
                print(roc_auc[target])
        else:
                targets[target] = {
                    'model': best_models[target],
                    'r2_score': r2_scores[target] 
                }
                    
                data_inf_prep = preprocessor.transform(data_inf)
                data_inf_preps[target] = data_inf_prep

                if target in targets:
                    target_info = targets[target]
                    model = target_info['model']
                    r2_score = target_info['r2_score']
                    y_pred_inf = model.predict(data_inf_preps[target])
                    print(f'prediksi dari target {target} adalah {y_pred_inf[0]}\n')
                    print(r2_scores[target])
                    data.append({'r2_score': r2_scores[target], 'prediction': y_pred_inf[0]})
                    data_inf[f'{target} Prediction'] = y_pred_inf[0]
    data_json = json.dumps(data)
    return data_json