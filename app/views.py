from flask import Flask, jsonify, render_template, Response, request
import datetime
import time


def index():
    return render_template('index.html')