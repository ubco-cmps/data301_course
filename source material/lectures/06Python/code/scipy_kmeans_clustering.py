%matplotlib inline 
import matplotlib.pyplot as plt
from scipy.cluster.vq import kmeans,vq
import random as rnd

# data generation
data = []
for i in range(0,100):
    data.append([rnd.random(), rnd.random()])

# Perform k-means clustering
numclusters = 2
centroids,_ = kmeans(data,numclusters)
idx,_ = vq(data,centroids)

# Move data into individual lists based on clustering
clusters = []
for i in range(0, numclusters):
    clusters.append([[],[]])

for i in range(0,len(idx)):
    clusterIdx = idx[i]
    clusters[clusterIdx][0].append(data[i][0])
    clusters[clusterIdx][1].append(data[i][1])    

# Plot data points and cluster centroids
plt.plot(clusters[0][0],clusters[0][1],'ob',
     clusters[1][0],clusters[1][1],'or')
plt.plot(centroids[:,0],centroids[:,1],'sg',markersize=8)
plt.show()