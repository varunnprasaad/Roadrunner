import json
from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy
from flask_bootstrap import Bootstrap

from db_handler import models

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://varun:1234@localhost/dbproject'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

Bootstrap(app)

db = SQLAlchemy(app)


# Routes
@app.route('/')
def index():
    cars = [car.as_dict() for car in models.Car.query.all()]
    categories = [cat.as_dict() for car in cars for cat in models.Category.query.filter_by(id=car['category_id'])]
    # for cat in categories:
    #     print(cat['features'])
    return render_template("index.html", cars=cars, categories=categories)


@app.route('/checkout', methods=['GET','POST'])
def checkout():
    id = request.args.get('category')
    cars = [car for car in models.Car.query.filter_by(category_id=id)]
    for car in cars:
        print(car)
    return render_template('checkout.html', cars=cars)


if __name__ == '__main__':
    app.run(host='', port=5000, debug=True)
