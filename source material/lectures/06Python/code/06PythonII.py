# see more on the Jupyter file in Documents/Demo

import string
for letter in string.ascii_uppercase:
    print(letter)
    
    
counts = {}
for letter in string.ascii_uppercase:
    counts[letter] = 0


from pprint import pprint
istr = input("Enter a message: ")
istr = istr.upper()
for c in istr:
    if c in counts:
        counts[c] = counts[c]+1
print(counts)
pprint(counts)

for c in istr:
    print("istr"+c)
    if c in counts:
        print("counts"+c)
        counts[c] = counts[c]+1


for c in istr:
    print("istr"+c)
    if c in counts:
        print("counts"+c)
        counts[c] = counts[c]+1
        
        
        
        
