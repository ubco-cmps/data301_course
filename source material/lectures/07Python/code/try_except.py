try:
    num = int(input("Enter a number:"))
    print("You entered:",num)
except ValueError:
    print("Error: Invalid number")
else:
    print("Thank you for the number")
finally:
    print("Always do finally block")
