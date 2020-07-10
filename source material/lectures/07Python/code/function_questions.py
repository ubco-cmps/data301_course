# Function questions

# Q1
def largest(n1, n2):
    if n1 > n2:
        return n1
    else:
        return n2
    
print(largest(10,15))
print(largest(5,5))

# Q2
def printN(n):
    for i in range(1,n+1):
        print(i)
        
printN(10)
