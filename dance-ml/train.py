# The data set used in this example is from http://archive.ics.uci.edu/ml/datasets/Wine+Quality
# P. Cortez, A. Cerdeira, F. Almeida, T. Matos and J. Reis.
# Modeling wine preferences by data mining from physicochemical properties. In Decision Support Systems, Elsevier, 47(4):547-553, 2009.

import os
import warnings
import sys

import pandas as pd
import numpy as np
from sklearn.metrics import mean_squared_error, mean_absolute_error, r2_score
from sklearn.model_selection import train_test_split
from sklearn.linear_model import ElasticNet
from sklearn.preprocessing import PolynomialFeatures
from sklearn.linear_model import LinearRegression, Perceptron
from sklearn.metrics import mean_squared_error, r2_score
from io import StringIO

import mlflow
import mlflow.sklearn
import tornado.ioloop
import tornado.web
from tornado import websocket, web, ioloop
import json, os



class IndexHandler(web.RequestHandler):
	'''Handle requests on / '''
	def get(self):
		self.render("index.html")

class LoadModelHandler(web.RequestHandler):
    def set_default_headers(self):
        print ("setting headers!!!")
        self.set_header("Access-Control-Allow-Origin", "*")
        self.set_header("Access-Control-Allow-Headers", "x-requested-with")
        self.set_header('Access-Control-Allow-Methods', 'POST, GET, OPTIONS')
    def post(self, *args):
        global lr 
        global loadedModelName
        experimentName = self.get_query_argument("experimentName")
        print("Loading model :" + experimentName)
        lr = mlflow.sklearn.load_model(experimentName)
        loadedModelName = experimentName
        self.write("OK");
        self.finish()

class SaveModelHandler(web.RequestHandler):
    def set_default_headers(self):
        print ("setting headers!!!")
        self.set_header("Access-Control-Allow-Origin", "*")
        self.set_header("Access-Control-Allow-Headers", "x-requested-with")
        self.set_header('Access-Control-Allow-Methods', 'POST, GET, OPTIONS')
    def post(self, *args):
        global lr 
        global loadedModelName
        mlflow.sklearn.save_model(lr, loadedModelName, serialization_format=mlflow.sklearn.SERIALIZATION_FORMAT_CLOUDPICKLE)
        self.write("OK");
        self.finish()

class ApiPredictHandler(web.RequestHandler):
    def set_default_headers(self):
        print ("setting headers!!!")
        self.set_header("Access-Control-Allow-Origin", "*")
        self.set_header("Access-Control-Allow-Headers", "x-requested-with")
        self.set_header('Access-Control-Allow-Methods', 'POST, GET, OPTIONS')
    def post(self, *args):
        '''data = json.loads(self.request.body)'''
        data = self.request.body.decode("utf-8")
        experimentName = self.get_query_argument("experimentName")
        prediction = predict(data,experimentName)
        print(prediction)
        self.write(str(prediction));
        self.finish()

class ApiTrainHandler(web.RequestHandler):
    def set_default_headers(self):
        print ("setting headers!!!")
        self.set_header("Access-Control-Allow-Origin", "*")
        self.set_header("Access-Control-Allow-Headers", "x-requested-with")
        self.set_header('Access-Control-Allow-Methods', 'POST, GET, OPTIONS')
    def post(self, *args):
        '''data = json.loads(self.request.body)'''
         # Read the wine-quality csv file (make sure you're running this from the root of MLflow!)
        '''uploaded_csv_file = self.request.files['file'][0]'''
        '''data = uploaded_csv_file.read_all()'''
        data = pd.read_csv(StringIO(self.request.body.decode("utf-8")))
        print(data)
        '''wine_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "audio-dance.csv")'''
        '''data = pd.read_csv(wine_path)'''
        experimentName = self.get_query_argument("experimentName")
        print("Experiment Name : " + experimentName)
        train_data(data, experimentName);
        self.finish()

def make_app():
    return tornado.web.Application([
        (r"/", IndexHandler),
        (r'/predict', ApiPredictHandler),
         (r'/train', ApiTrainHandler),
         (r'/savemodel', SaveModelHandler),
         (r'/loadmodel', LoadModelHandler)
    ])

def predict(values, experimentName):
    global lr 
    global loadedModelName
    test_values = pd.read_csv(StringIO(values), header=None)
    prediction = lr.predict(poly.fit_transform(test_values))

    return prediction

def eval_metrics(actual, pred):
    rmse = np.sqrt(mean_squared_error(actual, pred))
    mae = mean_absolute_error(actual, pred)
    r2 = r2_score(actual, pred)
    return rmse, mae, r2



def train_data(data, experimentName):
    warnings.filterwarnings("ignore")
    np.random.seed(40)

    # Split the data into training and test sets. (0.75, 0.25) split.
    train, test = train_test_split(data)

    # The predicted column is "quality" which is a scalar from [3, 9]
    train_x = train.drop(["quality"], axis=1)
    test_x = test.drop(["quality"], axis=1)
    train_y = train[["quality"]]
    test_y = test[["quality"]]

   
    with mlflow.start_run():
        global lr 
        global loadedModelName
        global poly

        train, test = train_test_split(data)

    # The predicted column is "quality" which is a scalar from [3, 9]
        x_train = train.drop(["quality"], axis=1)
        x_test = test.drop(["quality"], axis=1)
        y_train = train[["quality"]]
        y_test = test[["quality"]]
        rmses = []
        degrees = np.arange(1, 10)
        min_rmse, min_deg, score = 1e10, 0, 0

        for deg in degrees:
            # 生成多项式特征集(如根据degree=3 ,生成 [[x,x**2,x**3]] )
            poly = PolynomialFeatures(degree=deg, include_bias=False)
            x_train_poly = poly.fit_transform(x_train)

            # 多项式拟合
            poly_reg = LinearRegression()
            poly_reg.fit(x_train_poly, y_train)
            # print(poly_reg.coef_,poly_reg.intercept_) #系数及常数

            # 测试集比较
            x_test_poly = poly.fit_transform(x_test)
            y_test_pred = poly_reg.predict(x_test_poly)

            # mean_squared_error(y_true, y_pred) #均方误差回归损失,越小越好。
            poly_rmse = np.sqrt(mean_squared_error(y_test, y_test_pred))
            rmses.append(poly_rmse)
            # r2 范围[0，1]，R2越接近1拟合越好。
            r2score = r2_score(y_test, y_test_pred)

            # degree交叉验证
            if min_rmse > poly_rmse:
                 min_rmse = poly_rmse
                 min_deg = deg
                 score = r2score
            print('degree = %s, RMSE = %.2f ,r2_score = %.2f' % (deg, poly_rmse, r2score))


        # 生成多项式特征集(如根据degree=3 ,生成 [[x,x**2,x**3]] )
        poly = PolynomialFeatures(degree=min_deg, include_bias=False)
        x_poly = poly.fit_transform(x_train)

        # 多项式拟合
        lr = LinearRegression()
        lr.fit(x_poly, y_train)
        mlflow.log_metric("rmse", poly_rmse)
        mlflow.log_metric("r2", r2score)
        mlflow.log_metric("degree", deg)

        mlflow.sklearn.log_model(lr, experimentName)
       
        loadedModelName = experimentName

if __name__ == "__main__":
    global lr 
    global loadedModelName
    global poly
    loadedModelName = ''
    app = make_app()
    app.listen(8080)
    for item, value in os.environ.items():
        print('{}: {}'.format(item, value))

    tornado.ioloop.IOLoop.current().start()

