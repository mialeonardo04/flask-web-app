# import os
# from flask import Flask
# app = Flask(__name__)

# @app.route("/")
# def main():
#     return "Welcome! it's Updated!"

# @app.route('/how are you')
# def hello():
#     return 'I am good, how about you?'

# if __name__ == "__main__":
#     app.run(host="0.0.0.0", port=8080)

import os
from flask import Flask, render_template, abort, url_for, json, jsonify
import json

app = Flask(__name__,template_folder='.')
with open('file.json', 'r') as myfile:
    data = myfile.read()

@app.route("/")
def index():
    return render_template('index.html', title="page", jsonfile=json.dumps(data))


if __name__ == '__main__':
    app.run(host='0.0.0.0',port=8080)
