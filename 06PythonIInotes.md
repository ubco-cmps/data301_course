### Data 301 Data Analytics
Python Flow Control
### Decisions
- Decisions are used in programming to specify one or more conditions to be tested, along with statement(s) to execute if the condition is true.
- Acondition is an expression that is either True or False.
- These conditions control the flow of you program and different statements will be carried out depending on the outcome of these conditions.
- To build conditional statements we need to be able to write Boolean expressions.
### Boolean Expressions
- A Boolean expression is an expression that evaluates to a Boolean value <sup>1 </sup>.
- A Boolean value is either True or False.
```text
 Boolean values
Boolean values are not strings. The Python type for storing True and False values is called bool.
>>> print(type(True)) <class 'bool'>
>>> print(type("True")) <class 'str'>

```
___
1.1The name comes from George Boole, who first defined an algebraic system of logic in the mid 19th century

### Boolean Expressions
We can create Boolean expressions using:
Relational operators/Comparisons: used to compare two values
- Examples:
  5 < 10 # returns True
  N > 5  # N is a variable. Answer depends on N.

Logical operators: the logical operators and, or and not are used to combine relational operators.
- Example: (n>5)and(v!=n)

The result these expressions are a Boolean value which is either
True or False

### Comparisons
A condition is a Boolean expression that is either True or False and may contain one or more comparisons.

The comparison operators in Python are summarized below:
|Syntax|Description|
| :------------- | :----------: |
|>| Greater than|
|>= |Greater than or equal|
|<| Less than|
|<=| Less than or equal|
|==| Equal (Note: Not "=" which is used for assignment!)|
|!=| Not equal|

### Conditions with and, or, not
Conditions may be combined using the relational operators and,
or, not.
|Syntax|Description|Examples|Output|
| :------------- | :----------: | :------------- | :----------: |
|both are true|and|True and True <br>False and True|True <br>False|
|either or both are T|or|True or True <br>False or True<br>False or False|True <brTrue<br>FLase|
|false|not|not True <br>not False|False <br> True|

### Condition Examples
n=5
v=8
print(n > 5) #False
print(n == v) #False
print(n != v) # True
print((n == v) and (n+4>v)) # False
print((n == v) or (n+4>v)) # True
print((n+1) == (v-2) or (not v>4)) # True print((n+1) == (v-2) or not v>4) and (n>5)) # False
### Order of Operations
Table: The order of operations; see complete list [here](https://en.wikipedia.org/wiki/Order_of_operations#Programming_languages).
|||
| :------------- | :----------: | 
|()<br>**<br>* / % MOD<br>+ -<br>< <= > >=<br>== != <br>and<br> or|brackets <br>exponents Multiplication, division, modulo <br>Addition and subtraction<br>Comparisons: less-than and greater-than <br>Comparisons: equal and not equal<br>and<br>or|nots always bind to the condition immediate next to it|
```text
Tip:
I recommend always using brackets to avoid confusion.
```

```text
Example 16
How many of the following conditions are TRUE?
1. True and False
2. not True or not False
3. 3+2==5or5>3and4!=4
4. (1<2or3>5)and(2==2and4!=5)
5. not (True or False) or True and (not False)
A) 1 B) 2 C) 3 D) 4 E) 5
```
```text 
Answer:
How many of the following conditions are TRUE?
1. True and False = True or False
2. not True or not False = (not True) or (not False)
3. 3+2==5or5>3and4!=4
= (5 == 5) or (5 > 3) and (4 != 4) =(5==5)or((5>3)and(4!=4))# and first
4. (1<2or3>5)and(2==2and4!=5) (1 < 2 or 3 > 5) and (2 == 2 and 4 != 5) (1 < 2 or 3 > 5) and (2 == 2 and 4 != 5)
5. not (True or False) or True and (not False) not (True or False) or True and (not False) not (True or False) or True and (not False)
```
A) 1 B) 2 C) 3 D) **4** E) 5 

### Decisions
In Python decision syntax:
## put an image here

- Thestatement(s)aftertheifconditionisonlyperformedif the condition (i.e. Boolean expression) returns True.
- Anystatement(s)followingthe(optional)else:conditionis only performed if the condition is False.

```text
Python syntax
Remember that the indentation and colons are not optional!
```
### Decision Block Syntax
- Statementslistedafteranif/elif/esleclausearenotonly indented for readability.
- These indentation is also how Python knows which statements are part of the group of statements to be executed.
- Statements with the same indentation belong to the same group called a suite.
- Be consistent with either using tabs or spaces (no mixing)
```text
Tip: one-line if clause
If the suite of an if clause consists of a single line, it may go on the same line as the header statement.
if (n > 100): print("n is large")
```
### Decisions if/elif Syntax
Check out the difference for age = 20:
```text
age = 20
if age > 19:
print("Not a teenager")
print("Sorry") else:
print("You're young") print("ID checked")
```
The above returns:
||
|:-------------|
|Not a teenager <br>Sorry|

```text
age = 20
if age > 19:
print("Not a teenager")
print("Sorry") else:
print("You're young") print("ID checked")
```
The above returns:
||
|:-------------|
|Not a teenager <br> Sorry <br>ID<br>checked|

### Generic code:
```
    if (cond1):
          Process 1
          
```
          
 Example 1:         
```
    n=5
if (n < 10):
    n = 10
```
n is now 10

Example 2:
```
   n=5
if (n > 10):
     n = 10
```

Generic code:
```
 if (cond1):
     Process 1
 else:
     Process 2
```
Example 3:
```
n=5
if (n > 10):
    n = 10 
else:
  n=3 
 ```
 n is now 3
 
### Decisions if/elif Syntax
If there are more than two choices, use if/elif/else statements.<br> N.B. once a condition is met, no subsequent conditions are checked
```
if condition1:
     Process 1
 elif condition2:
     Process 2
 elif condition3:
     Process 3
 else:
     Process 4
```
```
if n == 1: print("one")
elif n == 2: print("two")
elif n == 3: print("three")
else:
print("Too big!")
print("Done!")
```
```text
else
Again, the else statement is an optional. There could be at most one else statement following an if
```
### if, elif, else

## put an inage 

### Decisions if/elif Syntax
```
n=1 ifn==1:
print("one")
elif n>0: # this condition is never checked since the
     # condition on line 2 has already been satisfied
      print("positive number")
elifn==3:
      print("three")
else:
      print("Too big!")
print("and Done!") # not part of the if statement
```
The above returns:
```text
one <br>
and Done!
```
### Decisions if/elif Syntax

```
n=3 
if n==1:
    print("one") 
elif n>0:
   print("positive number")
elif n == 3: # this condition is never checked since
     # condition on line 4 has already been satisfied
     print("three")
else:
      print("Too big!")
print("and Done!") # not part of the if statement

```

The above returns:
```text
positive number<br>
 and Done!
```
### Decisions Multiple if statements
I As mentioned previously, once a condition is met in an if/elif
statement, no subsequent conditions are checked.
I If we want all conditions to be checked we could use multiple
if statements:

```
if condition1:
    Process 1
if condition2:
    Process 2
if condition3:
    Process 3
if condition4:
    Process 4
```

```
n=3 
if n>0:
   print("positive number")
if n==3:
   print("three") 
if n<10:
   print("single digit")
```
```

positive number
three
single digit
```

```
 Example 17
What is the output of the following code?
n=3
if n < 1:
  print("one") 
elif n > 2:
  print("two") 
elif n == 3:
  print("three")
A) nothing
B) one
C) two
D) three
E) error
```
```
 Answer:
What is the output of the following code?
n=3
if n < 1:
print("one") elif n > 2:
print("two") elif n == 3:
print("three")
A) nothing
B) one
**C) two**
D) three
E) error
```

```
 Example 18
What is the output of the following code?
n=3
if n < 1:
  print("one") 
elif n > 2
  print("two")
else:
  print("three")
A) nothing
B) one
C) two
D) three
E) error
```
```
 Answer:
What is the output of the following code?
n=3
if n < 1:
print("one") elif n > 2
print("two") else:
print("three")
```
1. nothing
2. one
3. two
4. three<br>
**5. error (missing colon)**

```
Example 19
What is the output of the following code?
n=1
if n < 1:
  print("one") 
elif n > 2:
  print("two")
else:
  print("three") 
print("four")
A)nothing
B) one  four
C) three
D) three four
E) error
```

```
Answer:
What is the output of the following code?
n=1
if n < 1:
  print("one") 
elif n > 2:
  print("two")
else:
  print("three") 
print("four")
```
A)nothing
B) one  four
C) three
**D) three four**
E) error

```
 Example 20
What is the output of the following code?
n=0
if n < 1:
   print("one")
   print("five") 
elif n == 0:
   print("zero")
else:
   print("three") 
print("four")

A)nothing 
B) one 
   four
C) one 
   four
   five
D) one 
  five
  zero 
  four
E) error
  
```

<pre><code>
 Example 20
What is the output of the following code?
n=0
if n < 1:
   print("one")
   print("five") 
elif n == 0:
   print("zero")
else:
   print("three") 
print("four")

A)nothing 
B) one 
   four
<b>C) one 
   four
   five</b>
D) one 
  five
  zero 
  four
E) error
 </pre></code> 
 
 ### Try it: Decisions

```text
Example 21
Write a Python program that asks the user for a number then prints out if it is even or odd.
```
```text
Example 22
Write a Python program that asks the user for an integer. If that number is between 1 and 5, prints out the word for that number (e.g. 1 is one). If the number is not in that range, print out error. 
```
 
### Loops and Iteration

A loop repeats a set of statements multiple times until some condition is satisfied.
  - Each time a loop is executed is called an iteration.
A for loop repeats statements a certain number of times.
  -It will iterate over asequence, eg.1,2,....10
  - or it could iterate over group/collection elements, eg. lines in a document, elements in a list
A while loop repeats statements while a condition is True.
  - At each iteration we will check this condition. 
  - If its True we complete another iteration 
  - If its False we exit the loop.
  
 ### while loops
The most basic looping structure is the while loop.
A while loop continually executes a set of statements while a condition is true. Syntax:

```
 while condition :
                   statement1
                   statement2
                       .
                       .
```
Example:
```
n=1
while n <= 5:
     print(n)
     n=n+1
```

prints the values 1 through 5.

### while loops

## put an image

### Shorthand
In addition to the = operator for assigning a value to a variable, Python also supports a shorthand version that compounds various mathematical operators with the assignment operator:
Table: Table taken from [this](https://www.programiz.com/python-programming/operators) source

|Operator| Example| Equivalent to|
|:-------------|:-------------|:-------------|
|= |x=5| x=5|
|+=| x+=5| x=x+5|
|-=| x-=5| x=x-5|
|*=| x*=5| x=x*5|
|/=| x/=5| x=x/5|
|%=| x%=5| x=x%5|

Hence the program from 2 slides ago can be written:
```
n=1
while n <= 5:
print(n) n += 1
```
Output:
```
1 
2
3
4
5
```

### Question: while loop

```
 Example 23
What is the output of the following code:
    n=4
   while n >= 0:
         n=n-1 
         print(n)
A)numbers 3 to -1
B)numbers 3 to 0 
c) numbers 4 to 0
D) numbers 4 to -1 
E)numbers 4 to infinity
```
<pre><code>
Answer
What is the output of the following code:
    n=4
   while n >= 0:
         n=n-1 
         print(n)
<b>A)numbers 3 to -1</b>
B)numbers 3 to 0 
c) numbers 4 to 0
D) numbers 4 to -1 
E)numbers 4 to infinity
</pre></code> 

### Question: while loop 2
 Example 24
What is the output of the following code:
```
n=1
while n <= 5:
      print(n) 
      n=n+1
A) nothing
B) numbers 1 to 5 
C) numbers 1 to 6 
D) lots of 1s

```

<pre><code>
Question: while loop
answer
What is the output of the following code:
n=1
while n <= 5:
print(n) n=n+1
A) nothing
B) numbers 1 to 5
C) numbers 1 to 6
<b>D) lots of 1s Infinite loop without the fourth line indented</b>
 
</pre></code>
   
### The for loop
- A for loop repeats statements a given number of times.
- One way of building a for loop is to iterate over a sequence which we create using range()
   ```for i in range(1,6): 
               print(i)
   ```
 - The above prints the numbers 1 through 5. 
 ```text
 range(start, end)
  In range(start, end), the start number in inclusive and the start number is exclusive.
  ```
  ### Using range()
- The general form of range is: 
    range(start, end, step)
- Thedefaultstep(i.eincrement)is1 
- We may also specify an increment:
```
# prints the numbers: 1,3,5,7,9 
for i in range(1, 10, 2):
    print(i)
# prints the numbers: 2,4,6,8 
for i in range(2, 10, 2):
    print(i)
# prints the numbers 5 to 1
for i in range(5,0, -1):
    print(i)
```
### Using range()
- It is only required that the end argument be provided for the
range() function.
- Ifthestartargumentisnotprovided,itissetasitsdefault
value of 0 (not 1).
```
 for i in range(4):
      print(i)
```
The above prints the numbers: 0,1,2,3 (remember, end is not inclusive)
  
### the for and while loop
The for loop is like a short-hand for the while loop:
```
- i=0
while i < 10:
   print(i)
   i += 1
- for i in range(0, 10, 1): 
     print(i)   
```
### Common problems – Infinite Loops
Infinite loops are caused by an incorrect loop condition or not updating values within the loop so that the loop condition will eventually be false.
```
- Example:
    n=1
    while n <= 5:
          print(n)
 ```
Here we forgot to increase n->infinite loop.

N.B. to exit from an infinite loop while running Python in the
console, press Ctrl + C (press the stop icon in Jupyter Notebook).  


### Common Problems – Off-by-one Error
The most common error is to be "off-by-one". This occurs when you stop the loop one iteration too early or too late.
- Example:
    for i in range(0,10):
        print(i)
This loop was supposed to print 0 to 10, but it does not.
```text
Example 25
Question: How can we fix this code to print 0 to 10?
```
 
