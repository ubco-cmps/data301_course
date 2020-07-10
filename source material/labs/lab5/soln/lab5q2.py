# Ramon Lawrence - 99999999

# Function to print out CSV
def printCSV(rows):
    print("\nCSV Output:")
    print("id,name,salary")
    for v in rows:
         print(str(v[0])+","+v[1]+","+str(v[2]))
               
# Original messy data set with inconsistent spacing and line breaks
data = """2   Joe    95000 4 Steve
   35000    1  Samantha   150000     10 Leah   99000  
 6   Riley   53215     7   Ashley   23424   
 15    Sheyanne 225000   9  Dave  35235"""

# Split the 
values = data.split()

# Create and output individual lists for ids, names, salaries
ids = values[0::3]
name = values[1::3]
salary = values[2::3]
print("Ids:",ids)
print("Names:",name)
print("Salaries:",salary)

# Output data in CSV format
print("\nCSV Output:")
print("id,name,salary")
for i in range(0, len(ids)):
    print(ids[i]+","+name[i]+","+salary[i])
    
# Create new list where each element is a row (list of values)
rows = []
for i in range(0, len(ids)):
    rows.append([int(ids[i]),name[i],int(salary[i])])        
print("\nList with each row a list:")
print(rows)

# Filter: Only include rows where either id >= 4 and id <= 8 or salary > 50000
result = []
for r in rows:
    if (r[0] >= 4 and r[0] <= 8) or r[2] > 50000:
        result.append(r)
print("\nFilter with only rows where id>=4 and id<=8 or salary>50000:")
printCSV(result)

# Sort the data ascending by id
print("\nData sorted ascending by id: ")
result = rows
result.sort()
printCSV(result)

# Increase the salary of rows where the length of the name is <= 3 or starts with 'S'
result = []
for r in rows:
    newrow = list(r)
    if len(newrow[1]) <= 3 or newrow[1][0] == 'S':
            newrow[2] = newrow[2]*1.5    
    result.append(newrow)
print("\nIncrease salary where the length of the name is <= 3 or starts with 'S':")
printCSV(result)

# Bonus: Sort the descending by salary
result = sorted(rows,key=lambda x: x[2],reverse=True)
print("\nBonus: Sort descending by salary")
printCSV(result)