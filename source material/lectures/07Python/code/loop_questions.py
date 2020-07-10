# Loops questions

# Q1
for i in range(1, 11, 1):
 	print(i)
for i in range(10, 0, -1):
 	print(i)

# Q2
for n in range(1,101):
    if n % 3 == 0 and n % 5 == 0:
        print(n)

# More efficient:
for n in range(15,101,15):
    print(n)

# Q3
total = 0
maxnum = 0
for i in range(1,6):
    n = input("Enter a number: ")
    n = int(n)
    total += n
    if n > maxnum:
        maxnum = n

print("Max:",maxnum)
print("Sum:",total)
print("Avg:",total/5)
