# Ramon Lawrence - 99999999

import functools

data = list(range(1,11))

# Map function
def modify(x):
    if x % 2 == 0:
        return x/2
    else:
        return x*3

# Filter function
def myfilter(x):
    if x >= 5 and x <= 20:
        return True
    return False

# Reduce function
def condsum(x, y):
    if x > y:
        return x+y
    else:
        return x*y

result = list(map(modify, data))
print("Result after map:",result)

result = list(filter(myfilter, result))
print("Result after filter:",result)

result = functools.reduce(condsum, result)
print("Result after reduce:",result)