import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.preprocessing import PolynomialFeatures
from sklearn import linear_model
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


# LASSO拟合
bay_reg = linear_model.Lasso(alpha=0.2, tol=1.0, random_state=38)
bay_reg.fit(x_train, y_train)
# temp = np.array([169.000,212.000,237.500,214.000,176.219,170.182,209.605,181.874,120.943,125.827,0.000])
newy = bay_reg.predict(x_test)
print(newy)
plt.figure() # 实例化作图变量
plt.title(filename+','+columnname) # 图像标题
plt.xlabel('x') # x轴文本
plt.ylabel('y') # y轴文本
plt.plot(x_test, newy, 'k.')
plt.show()