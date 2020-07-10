#Q1:
import urllib.request
loc="http://www.ubc.ca"
site = urllib.request.urlopen(loc)
contents = site.read()
print(contents)
site.close()

#Q2:
import urllib.request
import csv

url="https://people.ok.ubc.ca/rlawrenc/teaching/301/notes/code/data/province_population.csv"

data = ""
with urllib.request.urlopen(url) as site:
    data = site.read().decode()
    
outfile = open("province.csv", "w")
outfile.write(data)
outfile.close()

provinces = []
with open("province.csv", "r") as infile:
    csvfile = csv.reader(infile)
    for row in csvfile:         
        if (len(row) > 0 and row[0] != '' and row[0] != 'Canada'):                          
            val = row[5].replace(",","")
            provinces.append([float(val)*1000, row[0]])

provinces.sort(reverse=True)
for p in provinces:
    print(p[1], "", p[0])
