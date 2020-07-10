# Ramon Lawrence - 99999999

# Create a list called data.
# Note only one of these will be used at a time
data = list(range(1,101))
data = [1, 9, 13, 25, 42, 55, 59, 63, 68, 69, 70, 70, 70, 70, 72, 75, 85, 99, 90, 85, 44, 23, 55, 66, 77]

# Prompt for lower and upper bounds and convert to integers
lower = input("Enter lower bound: ")
upper = input("Enter upper bound: ")
lower = int(lower)
upper = int(upper)

# Using construction of new list to perform filter rather than for loop
filter_data = [x for x in data if lower <= x <= upper]
maxdata = max(filter_data)
mindata = min(filter_data)
sumdata = sum(filter_data)
count = len(filter_data)
average = sumdata / count

# Print data list, maximum, minimum, and average of values in the range
print(data)
print("Maximum:", maxdata)
print("Minimum:", mindata)
print("Average:", sumdata/count)