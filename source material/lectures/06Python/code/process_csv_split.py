# Using split to process a CSV file
with open("data.csv", "r") as infile:
    for line in infile:
        line = line.strip(" \n")
        fields = line.split(",") 
        for i in range(0,len(fields)):
            fields[i] = fields[i].strip()
        print(fields)