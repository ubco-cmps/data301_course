import functools     # For Reduce

data = [4, 5, 3, 4, 5, 6]

# Map function
def subtract(x):
    return x-2


# Reduce function
def prod(x, y):
    return x*y

result = list(map(subtract, data))
print("Result after map:",result)

result = functools.reduce(prod, result)
print("Result after reduce:",result)