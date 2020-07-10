# String questions
name = "Joe"
age = 25
print("Name: "+name)
print("Age: "+str(age))

name = "Steve Smith"
print("First Name: "+name[0:5])
print("Last Name: "+name[6:])

# Note: use find() function to find space so that it works with all names.
loc = name.find(" ")
print("First Name: "+name[0:loc])
print("Last Name: "+name[loc+1:])


