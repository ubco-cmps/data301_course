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

# Create and initialize variables for min, max, sum, and count
maxdata = 0
mindata = 1000
sumdata = 0
count = 0

# Use a for loop to examine each element in the data set
for v in data:          
    # Only process data if in [lower,upper]
    if v >= lower and v <= upper:            
        # Update maximum if larger
        if v > maxdata:
            maxdata = v
        # Update minimum if smaller
        if v < mindata:
            mindata = v
        
        # Update sum and count
        sumdata += v
        count += 1

# Print data list, maximum, minimum, and average of values in the range
print(data)
print("Maximum:", maxdata)
print("Minimum:", mindata)
print("Average:", sumdata/count)