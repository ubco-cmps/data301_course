# Q1
data = []
for i in range(1, 11, 1):
    data.append(i)
for v in data:
    print(v)

# Q2
data = list(range(1,11))

for idx, val in enumerate(data):
    data[idx] = val * 2
    
print(data)	

# Q3
sentence = input("Enter a sentence: ")
words = sentence.split()
for w in words:
    if len(w) > 3:
        print(w)
print(len(words))