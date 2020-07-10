# Read from a file
infile = open("input.txt", "r")
for line in infile:
    print(line.strip('\n'))
infile.close()

# Alternate syntax - will auto-close file
with open("input.txt", "r") as infile:
    for line in infile:
        print(line.strip('\n'))