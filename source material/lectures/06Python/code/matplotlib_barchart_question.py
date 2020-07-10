%matplotlib inline 
import matplotlib.pyplot as plt
import numpy as np

series1 = [40, 50, 60, 70, 80]
series2 = [70, 50, 40, 90, 30]
index = np.arange(len(series1))

bar_width = 0.5
opacity = 0.8
error_config = {'ecolor': '0.5'}
rects1 = plt.bar(index, series1, bar_width, alpha=opacity,
                 color='g', yerr=None, error_kw=error_config,
                 label='series1', edgecolor='black')
rects2 = plt.bar(index + bar_width, series2, bar_width,
                 alpha=opacity, color='r', yerr=None,
                 error_kw=error_config, label='series2', edgecolor='black')

plt.xlabel('Group')
plt.ylabel('Count')
plt.title('My Awesome Bar Chart')
plt.xticks(index + bar_width, ('A', 'B', 'C', 'D', 'E'))
plt.legend()
plt.show()