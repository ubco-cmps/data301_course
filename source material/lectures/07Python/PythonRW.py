
#############################
#     Reading a file        #
#############################

# printing everything

infile = open("input.txt", "r") 

val = infile.read() # read file as one string
print(val)
infile.close()

# printing characters

infile = open("input.txt", "r") 
print(infile.read(5)) # prints first 5 characters
print(infile.read(5)) # prints the next 5 characters
print(infile.tell())
infile.close()

# print line by line

infile = open("input.txt", "r")
print(infile.readline()) # prints the first line
print(infile.readline()) # prints the second line

# print ends with a new line by default,
# print each line as one string with \n separators

infile = open("input.txt", "r")
print(infile.readlines()) # prints each line as an element of a vector


# print with new lines appearing on new lines:

# option 1 with for loop
with open("input.txt", "r") as infile:
     for line in infile:
          print(line.strip('\n'))

# option 1b with for loop
with open("input.txt", "r") as infile:
    for line in infile:
        print(line, end="")

# print with new lines appearing on new lines:

# option 2 with while loop
infile = open("input.txt", "r")
line = infile.readline()
while line != "":
    print(line)
    line = infile.readline()

# need to close
infile.close()



#############################
#     Writing a file        #
#############################


outfile = open("output.txt", "w")

for n in range(1,11):
    outfile.write(str(n) + "\n")

outfile.close() # not writen to final until we run the following:


outfile = open("output.txt", "w")
while open("output.txt", "w") as outfile:
	for n in range(1,11):
		outfile.write(str(n) + "\n")
		
###################### 
# create a new file (or overwrite if it already exists)
with open("test.txt", "w") as f:
	f.write("Hello World")

# creates an empty file
with open("test2.txt", "w") as f:
	pass

# like read, write will pick up where it left off
# (will overwrite the file if it already exist)
with open("test.txt", "w") as f:
	f.write("Test")
	f.write("Test again")

# append to the end

outfile = open("test.txt", "a")

for n in range(11,20):
    outfile.write(str(n) + "\n")
outfile.close()
# DON'T FORGET TO CLOSE THE FILE

#############################
#   Other file methods      #
#############################

infile = open("input.txt", "r")

# Check if a file is closed
print(infile.closed)	# False

# Read all lines in the file into a list
lines = infile.readlines()
infile.close()
print(infile.closed)	# True
# lines still avaiable
lines


###############################
#   Use split for csv file    #
###############################

# to see what it looks like
infile = open("data.csv", "r")
line = infile.readline()
print(line)
line = line.strip(" \n")
print(line.strip(" \n"))
# converts the sting to a list
fields = line.split(",")
print(fields)
infile.close()

with open("data.csv", "r") as infile:
    for line in infile:
        line = line.strip(" \n")
        fields = line.split(",")
        # removes any trailing or leading whitespace
#        for i in range(0,len(fields)):
#            fields[i] = fields[i].strip()
        print(fields)


# using the csv module
# only prints the rows that start with a number> 1
import csv
with open("data.csv", "r") as infile:
    csvfile = csv.reader(infile)
    for row in csvfile:
        if float(row[0]) > 1:
            print(row)


###############################
#  List all files in a dir  #
###############################

import os
print(os.listdir("."))


#############################
# Python Try it 
#############################

# Q1:
with open("test.txt", "w") as outfile:
	for n in range(20,9,-1):
		outfile.write(str(n)+"\n")
		
# Q2:
with open("test.txt", "r") as infile:
    for line in infile:
        if int(line) % 2 == 0:
            print(line.strip("\n"))

# Q3:
import csv

with open("provincepop.csv", "r") as infile:
    csvfile = csv.reader(infile)
    for row in csvfile:   
    	# row is a vector
    	print(row)

# Q4:    
with open("provincepop.csv", "r") as infile:
    csvfile = csv.reader(infile)
    for row in csvfile:   
    	# need to remove the commas before feeding to int
       if row[0] != '' and int(row[3].replace(",","")) > 1000:
       		print(row[0],row[3])
            #print(row[0],int(row[3].replace(",","")))


#######################
# try-except example #
#######################

try:
	num = int(input("Enter a number:"))
	print("You entered:",num)
except ValueError:
    print("Error: Invalid number")
else:
    print("Thank you for the number")
finally:
    print("Always do finally block")


try:
	num = int(input("Enter num:"))
	print(num)
except ValueError:
    print("Invalid")
else:
    print("Thanks")
finally:
	print("Finally") 



############################
# Try it: Python exception #
############################

# Q1:
try:
    num1 = int(input("Enter a number:"))
    print(num1)
    num2 = int(input("Enter a number:"))
    print(num2)
    print(num1,"/",num2,"=",(num1/num2))
except ValueError:
    print("Invalid")
except ZeroDivisionError:
    print("Cannot divide by 0!")



#######################
# (GET) websites #
#######################


import urllib.request
# don't forget the protocol http://
loc="http://google.com"
site = urllib.request.urlopen(loc)
contents = site.read()
print(contents)
site.close()


import urllib
url = "http://www.google.com/search?hl=en&q=data+analysis"
headers={'User-Agent':'Mozilla/5.0 (Windows NT 6.1)'}
request = urllib.request.Request(url,None,headers)
response = urllib.request.urlopen(request)
data = response.read()
data = data.decode()		# Convert from Unicode to ASCII
print(data)
response.close()


import urllib.parse
import urllib.request

url = 'https://www.ask.com/web'
# Build and encode data
values = {'q' : 'data analysis'}

data = urllib.parse.urlencode(values)
# converts to a language the internet understands
data = data.encode('utf-8')
req = urllib.request.Request(url, data)
with urllib.request.urlopen(req) as response:
    page = response.read()
    print(page)



#######################
# Try it Python urls #
#######################

#  Q1:
import urllib.request
loc="https://people.ok.ubc.ca/ivrbik/"
site = urllib.request.urlopen(loc)
contents = site.read()
print(contents)
site.close()

# Q2:
import urllib.request
import csv

url = "https://raw.githubusercontent.com/ubco-mds-2018/data531_public/master/province_population.csv"

with urllib.request.urlopen(url) as site:
    data = site.read().decode() # Convert from Unicode to ASCII 

outfile = open("province_population.csv", "w")
outfile.write(data)
outfile.close()

provinces = []
with open("province_population.csv", "r") as infile:
    csvfile = csv.reader(infile)
    for row in csvfile:         
        if (len(row) > 0 and row[0] != '' and row[0] != 'Canada'):                          
            val = row[5].replace(",","")
            provinces.append([float(val)*1000, row[0]])

provinces.sort(reverse=True)
for row in provinces:
    print(row[1], "", row[0])





































