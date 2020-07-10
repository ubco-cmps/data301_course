# Write numbers 1 to 10 to output.txt file
outfile = open("output.txt", "w")

for n in range(1,11):
    outfile.write(str(n) + "\n")

outfile.close()