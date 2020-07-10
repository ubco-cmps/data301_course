infile = open("input.txt", "r")

# Check if a file is closed
print(infile.closed)	# False

# Read all lines in the file into a list
lines = infile.readlines()
infile.close()
print(infile.closed)	# True