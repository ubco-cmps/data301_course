#Q1:
outfile = open("test.txt", "w")
for n in range(20,9,-1):
    outfile.write(str(n)+"\n")
outfile.close()

#Q2:
with open("test.txt", "r") as infile:
    for line in infile:
        if int(line) % 2 == 0:
            print(line.strip("\n"))

#Q3:
import csv
with open("province_population.csv", "r") as infile:
    csvfile = csv.reader(infile)
    for row in csvfile:   
        if row[0] != '' and float(row[5].replace(",","")) > 1000:
            print(row[0],float(row[5].replace(",","")))