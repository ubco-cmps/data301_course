import csv

# Process CSV file using csv module
with open("data.csv", "r") as infile:
    csvfile = csv.reader(infile)
    for row in csvfile:
        if int(row[0]) > 1:
            print(row)