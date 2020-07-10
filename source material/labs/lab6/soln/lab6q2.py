
# coding: utf-8

# In[71]:

from sklearn import datasets, linear_model
data = []

with open("lab6q2_input.txt", "r") as infile:
    header = next(infile) 
    print(header)
    for line in infile:
        row = line.strip('\n').split(";")
        data.append(row)
        
# Linear regression
def removeQues(x):
    if x == "?":
        return 0
    else:
        return int(x)
    
yearsexp  = [[removeQues(x[4])] for x in data]
useful = [removeQues(x[12]) for x in data]
#yearsexp = np.array(yearsexp[:20])
#useful = np.array(useful[:20])

regr = linear_model.LinearRegression()
regr.fit(yearsexp, useful)

# The coefficients
print('Coefficients: \n', regr.coef_)
# The mean square error
print("Residual sum of squares: %.2f"
      % np.mean((regr.predict(yearsexp) - useful) ** 2))
# Explained variance score: 1 is perfect prediction
print('Variance score: %.2f' % regr.score(yearsexp, useful))

# Plot outputs
plt.scatter(yearsexp, useful,  color='black')
#plt.plot(yearsexp, regr.predict(useful), color='blue', linewidth=3)

plt.xticks(())
plt.yticks(())

#plt.show()

# k-means clustering
from sklearn.cluster import KMeans
data = [[removeQues(x[0]), removeQues(x[4]) ] for x in data]
estimator = KMeans(n_clusters=5, init='k-means++', n_init=10, max_iter=300, tol=0.0001, 
       precompute_distances='auto', verbose=0, random_state=None, copy_x=True, n_jobs=1)
result = estimator.fit(data)

print(result)


# In[ ]:



