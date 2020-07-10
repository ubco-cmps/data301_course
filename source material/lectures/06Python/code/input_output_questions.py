# Input, output, dates

# Q1
name = input("What is your name?")
print("Your name is: "+name)
print("Length:",len(name))
print("First five characters: "+name[0:5])


# Q2
from datetime import datetime
current = datetime.now()
print("{}/{}/{}".format(current.year, current.month, current.day))

