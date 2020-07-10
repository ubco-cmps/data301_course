# Dictionary question
from pprint import pprint

# Alternative way to build dictionary
#counts = {}
#for l in range(65,91):
#	counts[chr(l)] = 0

import string
counts = {}
for letter in string.ascii_uppercase:
    counts[letter] = 0
print(counts)


str = input("Enter a message: ")
str = str.upper()
for c in str:
    if c in counts:
        counts[c] = counts[c]+1
print(counts)
pprint(counts)
