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

