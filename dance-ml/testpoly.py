import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.preprocessing import PolynomialFeatures
from sklearn.linear_model import LinearRegression, Perceptron
from sklearn.metrics import mean_squared_error, r2_score
from sklearn.model_selection import train_test_split
import csv
filename = 'audio-dance.csv'
columnname = 'quality'
data = pd.read_csv(filename)

#_train, x_test, y_train, y_test = train_test_split(X, y, test_size=0.7)
# Split the data into training and test sets. (0.75, 0.25) split.
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
poly_reg = LinearRegression()
poly_reg.fit(x_poly, y_train)

newy = poly_reg.predict(poly.fit_transform(x_test))

plt.figure() # 实例化作图变量
plt.title(filename+','+columnname) # 图像标题
plt.xlabel('x') # x轴文本
plt.ylabel('y') # y轴文本
plt.plot(x_test, newy, 'k.')
plt.show()