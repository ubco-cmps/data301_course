try:
    num1 = int(input("Enter a number:"))
    print(num1)
    num2 = int(input("Enter a number:"))
    print(num2)
    print(num1,"/",num2,"=",(num1/num2))
except ValueError:
    print("Invalid")
except ZeroDivisionError:
    print("Cannot divide by 0!")