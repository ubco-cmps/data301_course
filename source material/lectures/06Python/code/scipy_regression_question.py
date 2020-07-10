from scipy import stats
import numpy as np
import matplotlib.pyplot as plt

x = np.array([1, 5, 10, 15, 20, 25])
y = np.array([-1, -12, -26, -40, -60, -73])

slope, intercept, r_value, p_value, slope_std_error = stats.linregress(x, y)

print("Formula:", slope,"* x +",intercept,"= y")
predict_y = intercept + slope * x
print("Predicted y-values:",predict_y)
pred_error = y - predict_y
print("Prediction error:",pred_error)
degr_freedom = len(x) - 2
residual_std_error = np.sqrt(np.sum(pred_error**2) / degr_freedom)
print("Residual error:",residual_std_error)
plt.plot(x, y, 'o')
plt.plot(x, predict_y, 'k-')
plt.show()