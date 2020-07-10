# Linear Regression using scipy

%matplotlib inline 

from scipy import stats
import numpy as np
import matplotlib.pyplot as plt

# Sample data
x = np.array([5, 7, 9, 11, 13, 15])
y = np.array([11, 14, 20, 24, 29, 31])

slope, intercept, r_value, p_value, slope_std_error = stats.linregress(x, y)

# Output regression information
predict_y = intercept + slope * x
print("Predicted y-values:",predict_y)
pred_error = y - predict_y
print("Prediction error:",pred_error)
degr_freedom = len(x) - 2
residual_std_error = np.sqrt(np.sum(pred_error**2) / degr_freedom)
print("Residual error:",residual_std_error)

# Plotting
plt.plot(x, y, 'o')
plt.plot(x, predict_y, 'k-')
plt.show()