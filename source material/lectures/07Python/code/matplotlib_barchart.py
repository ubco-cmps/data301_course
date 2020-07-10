# Next line puts charts inline in jupyter
%matplotlib inline 
import matplotlib.pyplot as plt
import numpy as np

# Data sset
data1 = [25,45,35,20]
data2 = [35,40,25,30]
index = np.arange(len(data1))
bar_width = 0.35
opacity = 0.4
error_config = {'ecolor': '0.3'}

# Creates two bars
rects1 = plt.bar(index, data1, bar_width, alpha=opacity,
                 color='b', yerr=None, error_kw=error_config,
                 label='Dogs')
rects2 = plt.bar(index + bar_width, data2, bar_width,
                 alpha=opacity, color='r', yerr=None,
                 error_kw=error_config, label='Cats')

plt.xlabel('Group')
plt.ylabel('Count')
plt.title('Dogs versus Cats')
plt.xticks(index + bar_width, ('1', '2', '3', '4'))
plt.legend()
plt.tight_layout()
plt.show()
