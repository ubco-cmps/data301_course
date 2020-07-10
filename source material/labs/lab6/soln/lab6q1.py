
# coding: utf-8

# In[17]:

# Ramon Lawrence - 99999999
get_ipython().magic('matplotlib inline')

from Bio.Blast import NCBIWWW
from Bio.Blast import NCBIXML
import matplotlib.mlab as mlab
import matplotlib.pyplot as plt
import numpy as np

organism = []
sizes = []
count = 0
with open("input.txt", "r") as infile:
    for line in infile:
        seq = line.strip('\n')
        print("Sequence:",seq[:20],"Length:",len(seq)) 
        
        # Make BLAST request (if output file does not exist)
        count+= 1
        filename = "dna_lab6_"+str(count)+".xml"        
        
        try:
            blast_infile = open(filename,"r")      
            print("Using saved file.")
        except:            
            print("Performing online BLAST search.")
            result_handle = NCBIWWW.qblast("blastn", "nt", seq)
            save_file = open(filename, "w")
            result = result_handle.read()
            save_file.write(result)
            save_file.close()
            result_handle.close()
            blast_infile = open(filename)
                          
        # Parse the BLAST search XML result
        blast_records = NCBIXML.parse(blast_infile)
        for blast_record in blast_records:            
            # Use only first alignment            
            sizes.append(blast_record.alignments[0].length)
            if "Vitis vinifera" in blast_record.alignments[0].title:
                organism.append(1)
            else:
                organism.append(0)
        
        blast_infile.close()    

# Print organism list and sizes list
print(organism)
print(sizes)

# Data analytics and visualization                

# Histogram
num_bins = 50
# the histogram of the data
n, bins, patches = plt.hist(sizes, num_bins, normed=False, facecolor='green', alpha=0.5)
plt.xlabel('Sequence Length')
plt.ylabel('Count')
plt.title('Histogram of Matching Sequence Lengths')
plt.show()

# Bar chart of two organisms
data = []
data.append(sum(organism))
data.append(count-sum(organism))

index = np.arange(1)
bar_width = 0.35
opacity = 0.4
error_config = {'ecolor': '0.3'}

plt.bar(index, [sum(organism)], bar_width,
                 alpha=opacity, color='b', yerr=None,
                 error_kw=error_config,
                 label='Vitis vinifera')

plt.bar(index + bar_width, [count-sum(organism)], bar_width,
                 alpha=opacity, color='r', yerr=None,
                 error_kw=error_config,
                 label='Drosophila melanogaster')

plt.xlabel('Organism')
plt.ylabel('Count')
plt.title('Vitis vinifera versus Drosophila melanogaster')
plt.xticks(index + bar_width, ())
plt.legend()
plt.tight_layout()
plt.show()


# In[ ]:



