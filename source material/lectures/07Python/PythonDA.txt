# make sure you have installed correctly using this check:
import Bio
print(Bio.__version__)

# Create a sequence as a string
from Bio.Seq import Seq
my_seq = Seq("AGTACACTGGT")
print(my_seq)
print(type(my_seq))
str_seq = "AGTACACTGGT"
print(type(str_seq))


######################
# FASTA example:
######################

from Bio import SeqIO
example_dna = SeqIO.parse("/Users/ivrbik/Dropbox/Teaching/UBCO/Data301/Irenes_301_Slides/08Phython/ls_orchid.fasta.rtf", "fasta")
for seq_record in example_dna:
    print(seq_record.id)
    print(repr(seq_record.seq))
    print(len(seq_record))
    print(seq_record.seq.complement())
    
    
######################
# Transcription
######################

from Bio.Seq import Seq
from Bio.Alphabet import IUPAC

coding_dna = Seq("TGCATTGGGTGCTGA",IUPAC.unambiguous_dna)
template_dna = coding_dna.reverse_complement()
messenger_rna = coding_dna.transcribe()

print("Coding:       ",coding_dna)
print("Template:     ",template_dna)
print("Messenger RNA:",messenger_rna)
print("Translation:  ",messenger_rna.translate())



######################
# BLAST example
######################

from Bio.Blast import NCBIWWW
from Bio.Blast import NCBIXML
sequence = "ACTATTCCAAACAGCTCATAACCAGAAA"
# this will take a few seconds to complete
handle = NCBIWWW.qblast("blastn", "nt", sequence)

result = handle.read()
print(result)		# Output is in XML format

######################
# BLAST example 2 parsing
######################

# don't need to run this again if you did previous example
from Bio.Blast import NCBIWWW
from Bio.Blast import NCBIXML
sequence = "ACTATTCCAAACAGCTCATAACCAGAAA"
handle = NCBIWWW.qblast("blastn", "nt", sequence)
records = NCBIXML.parse(handle)

# Retrieve the next item from the iterator by calling its next() method
record = next(records)
for alignment in record.alignments:
    for hsp in alignment.hsps:
        print('sequence:', alignment.title)
        print('length:', alignment.length)
        print('e value:', hsp.expect)
        print(hsp.query[0:75] + '...')
        print(hsp.match[0:75] + '...')
        print(hsp.sbjct[0:75] + '...')


# each hit has only one hsp
count1 = 0 
for alignment in record.alignments:
    count1 += 1
    print(count1)
    count2 = 0 
    for hsp in alignment.hsps:
        count2 += 1
        print(count2)


######################
# TRY IT: biopython
######################

from Bio.Blast import NCBIWWW
from Bio.Blast import NCBIXML
sequence = "ACTATTCCAAACAGCTCATAACCAGAAA"
handle = NCBIWWW.qblast("blastn", "nt", sequence)
records = NCBIXML.parse(handle)
record = next(records)
count = 0
for alignment in record.alignments:
    for hsp in alignment.hsps:
        count += 1
        if count > 3:
            break
        print('\nsequence:', alignment.title)
        print('length:', alignment.length)
        print(hsp.query[0:75] + '...')
        print(hsp.match[0:75] + '...')
        print(hsp.sbjct[0:75] + '...')


######################
# Cats and dogs Chart
######################

# if you are using jupyter notebook
# type the following to see the plots in notebook
%matplotlib inline 

import matplotlib.pyplot as plt
import numpy as np

# Data sset
data1 = [25,45,35,20]
data2 = [35,40,25,30]
index = np.arange(len(data1))
bar_width = 0.35
opacity = 0.4

# Creates two bars
rects1 = plt.bar(index, data1, bar_width, alpha=opacity,
                 color='b', label='Dogs')
rects2 = plt.bar(index + bar_width, data2, bar_width,
                 alpha=opacity, color='r', label='Cats')

plt.xlabel('Group')
plt.ylabel('Count')
plt.title('Dogs versus Cats')
plt.xticks(index + bar_width, ('1', '2', '3', '4'))
plt.legend()
plt.tight_layout()
plt.show()

######################
# Histogram example 1
######################

import matplotlib.pyplot as plt

num_bins = 5
x = [5, 3, 8, 5, 2, 7, 2, 4, 6, 2]

# prints some values to the screen
plt.hist(x, num_bins,density=False, facecolor='blue',alpha=0.5)

# saves them to variables 
# first thing outputted will save to n
# second thing outputted will save to bins
# third thing outputted will save to patches
n, bins, patches = plt.hist(x, num_bins,
                            density=False, facecolor='blue',
                            alpha=0.5)




plt.xlabel('Number')
plt.ylabel('Count')
plt.title('Histogram')
plt.show()

######################
# Hisogram example 2
######################


import numpy as np
import matplotlib.pyplot as plt
import scipy.stats

mu = 100
sigma = 15
x = mu+sigma*np.random.randn(10000)
num_bins = 50
n, bins, patches = plt.hist(x, num_bins, edgecolor="k",
                            density=1, facecolor='green',
                            alpha=0.5)
y = scipy.stats.norm.pdf(bins, mu, sigma)
plt.plot(bins, y, 'r--') # red dashed line
plt.xlabel('Smarts')
plt.ylabel('Probability')
plt.title(r'Histogram of IQ: $\mu=100$, $\sigma=15$')
plt.subplots_adjust(left=0.15)
plt.show()




######################
# TRY it: Charts
######################


%matplotlib inline
import matplotlib.pyplot as plt
import numpy as np

series1 = [40, 50, 60, 70, 80]
series2 = [70, 50, 40, 90, 30]
index = np.arange(len(series1))
print(index)

bar_width = 0.5
opacity = 0.8
error_config = {'ecolor': '0.5'}
rects1 = plt.bar(index, series1, bar_width, alpha=opacity,
                 color='g', edgecolor="k",label='series1')
rects2 = plt.bar(index + bar_width, series2, bar_width,alpha=opacity,
                 color='r', edgecolor="k", label='series2')

plt.xlabel('Group')
plt.ylabel('Count')
plt.title('My Awesome Bar Chart')
plt.xticks(index + bar_width, ('A', 'B', 'C', 'D', 'E'))
plt.legend()
plt.show()


######################
# TRY it: Linear regression
######################

from scipy import stats
import numpy as np
import matplotlib.pyplot as plt

x = np.array([5, 7, 9, 11, 13, 15])
y = np.array([11, 14, 20, 24, 29, 31])

slope, intercept, r_value, p_value,slope_std_error = stats.linregress(x, y)
predict_y = intercept + slope * x
print("Predicted y-values:",predict_y)
pred_error = y - predict_y
print("Prediction error:",pred_error)
degr_freedom = len(x) - 2
residual_std_error = np.sqrt(np.sum(pred_error**2) / degr_freedom)
print("Residual error:",residual_std_error)
plt.plot(x, y, 'o')
plt.plot(x, predict_y, 'k-') # k for black (b for blue)
plt.show()


#############
## k means ##
#############

import numpy as np
from numpy import vstack,array
from numpy.random import rand
from scipy.cluster.vq import kmeans,vq

# data generation
data = vstack((rand(150,2) + array([.5,.5]),rand(150,2)))

# computing K-Means with K = 2 (2 clusters)
numclusters = 2
centroids,_ = kmeans(data,numclusters)
# assign each sample to a cluster
idx,_ = vq(data,centroids)


#################################
## k means: alternative coding ##
#################################

## alt data generation:
import random as rnd
from scipy.cluster.vq import kmeans,vq

datalist = []
for i in range(0,100):
    datalist.append([rnd.random(), rnd.random()])
data2 = np.asarray(datalist)

##alternative way of coding
km =kmeans(data2,2)
centroids2 = km[0]
vqd = vq(data2,centroids2)
idx2 = vqd[0]


#######################
# K means - example 2
#######################

import matplotlib.pyplot as plt

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
# s for square g for green
plt.plot(centroids[:,0],centroids[:,1],'sg',markersize=8) 
plt.show()

#############################
# Try it: Linear Regression #
#############################

# true model
# x = [1, 5, 10, 15, 20, 25]
# y = [x * -3 + 2 for x in x]
# print(y)

# Answer:
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

######################
# Try It : databases #
######################


import mysql.connector
try:
    cnx=mysql.connector.connect(user='root', password='password',host='localhost',database='workson')
    cursor = cnx.cursor()
    query = ("SELECT title, AVG(salary) as avgSalary FROM Emp WHERE ename >= 'J' GROUP BY title")
    cursor.execute(query)
    for (title, avgSalary) in cursor:
        print(title, avgSalary)
    cursor.close()
except mysql.connector.Error as err:
    print(err)
finally:
    cnx.close()




######################
# Try it: MapReduce 2
######################

import functools     # For Reduce

data = [4, 5, 3, 4, 5, 6]

# Map function
def subtract(x):
    return x-2

# Reduce function
def prod(x, y):
    return x*y

result = list(map(subtract, data))
print("Result after map:",result)

result = functools.reduce(prod, result)
print("Result after reduce:",result)






