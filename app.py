from random import randint

import jinja2
from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy

from db_handler import models

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://varun:1234@localhost/dbproject'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

env = jinja2.Environment()
env.filters['randint'] = randint


# Routes
@app.route('/')
def index():
    cars = [car.as_dict() for car in models.Car.query.all()]
    categories = [cat.as_dict() for car in cars for cat in models.Category.query.filter_by(id=car['category_id'])]
    for cat in categories:
        print(cat['features'])
    return render_template("index.html", cars=cars, categories=categories)


if __name__ == '__main__':
    app.run(host='', port=3000, debug=True)
