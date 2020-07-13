### Why learn Python?
Python is increasingly the most popular choice of programming language for data analysts because it is designed to be simple, efficient, and easy to read and write.
There are many open source software and libraries that use Python and data analysis tools built on them.
We will use Python to learn programming and explore fundamental programming concepts of commands, variables, decisions, repetition, and events.
 
 ### What is Python?
Python is a general, high-level programming language designed for code readability and simplicity.
Python is available for free as open source and has a large community supporting its development and associated tools.
Python was developed by Guido van Rossum and first released in 1991. Python 2.0 was released in 2000 (latest version 2.7), and a backwards-incompatible release Python 3 was in 2008.
􏰀 - Our coding style will be Python 3 but most code will also work for Python 2.
􏰀 - (P.S. the name comes from Monty Python)

### Python Language Characteristics
## Python supports:
􏰀 - dynamic typing
– types can change at run-time
􏰀 􏰀 -multi-paradigm – flexible in that is supports both procedural, object-oriented, and functional styles, for example.
􏰀􏰀 - automatic memory management and garbage collection
􏰀 -􏰀 extensible – other languages such as C/C++ can be used to
􏰀 -compile the code.
􏰀 -􏰀 and more ...
 

### Python Language Characteristics
## Python core philosophies (by Tim Peters) 􏰀 Beautiful is better than ugly
􏰀􏰀 - Explicit is better than implicit
􏰀􏰀 - Simple is better than complex
􏰀􏰀 - Complex is better than complicated 􏰀 Readability counts
 
###  Some Quotes
If you can’t write it down in English, you can’t code it.
— Peter Halpern
I really hate this damn machine. I wish that I could sell it.
I never does quite what I want. Just only what I tell it.
— programmers lament
 

### Introduction to Programming
Recall. . .
An algorithm is a precise sequence of steps to produce a result. A program is an encoding of an algorithm in a language to solve a particular problem.
There are numerous languages that programmers can use to specify instructions. Each language has its different features, benefits, and usefulness.
The goal is to understand fundamental programming concepts that apply to all languages.

### Installing and Using Python
Follow this guide on getting Python 3 on your computer (or this guide, or this guide (for Macs), or countless others you might find on the internet).
Another way you can get python is through Anaconda (recommended).
􏰀 - See this help video (Windows) 􏰀 -See this help video (Mac)
 

### Python: Basic Rules
􏰀
-To program in Python you must follow a set of rules for specifying your commands. This set of rules is called a syntax.
-􏰀 Just like any other language, there are rules that you must follow if you are to communicate correctly and precisely.
-For a more thorough overview of Python, you may have a look at Python Essential Reference by David Beazley as well as countless website online, eg w3schools, codeacademy, . . .
-Other useful resources include: documentation for Python 3.7.3, Python.org (getting started), and the Pep 8 style guide.
􏰀


### Python: Basic Rules
-Important general rules of Python syntax:
-􏰀 Python is case-sensitive.
-􏰀 Python is particular on whitespace and indentation.
-􏰀 The end of command is the end of line (i.e semi-colons are not a required terminator).
􏰀- Use four spaces for indentation whenever in a block.
􏰀- Spaces are the preferred indentation method.
-􏰀 Tabs should be used solely to remain consistent with code that is already indented with tabs.
􏰀 -Python 3 disallows mixing tabs and spaces for indentation.
```text
 def spam(): 
   eggs = 12
   return eggs
print spam()
```


### Comments
Comments are used by the programmer to document and explain the code. Comments are ignored by the computer.
Type # before the comment and any characters to the end of line are ignored by the computer. Example:
 ``` text
 # Single line comment
 print (1)  # Comment at end of line
 ```

### Python Programming
A Python program, like a book, is read left to right and top to bottom. Each command is on its own line.
```text
# Sample Python program
name = "Joe" print("Hello") 
print("Name: "+name)
```
A user types in a Python program in a text editor (some examples) or integrated development environment (IDE examples).
To run the program we need a Python interpreter (i.e. a program that reads Python programs and carries out their instructions).
 
 ### Installing and Using Python

You may already have a version of python on your computer. You can check by opening the command window/terminal and
typing py/python (Windows/Mac).
To exit using Python in the console type Ctrl + keystrokeZ then
ENTER (if using Windows) or Ctrl + keystrokeD on a Mac.
Alternatively, you could also run the python command exit().
Read more about running python through the console here.
You could also use one of the various online Python 3 compilers for example.
  
### Installing and Using Python
Python version
If you haven’t done any of the installations above, this is probably going to be Python 2.
![alt text](image/pythonshell.png)
You can find out which version of Python you have by typing python -V in your console.
 

### Python Editor - Jupyter
“Project Jupyter exists to develop open-source software, open-standards, and services for interactive computing across dozens of programming languages.”
Jupyter notebook is a graphical, browser-based application for editing and running Python. Follow the instructions here to install.
To run, type jupyter notebook in your Command Prompt. This action will start the notebook server in your default browser
and echo information about the notebook server in your terminal. Read more about it by clicking Try Jupyter for Python here

### Python Editor - Jupyter
The Notebook Dashboard will list all of the notebooks (.ipynb), files, and subdirectories stored in the local working directory (i.e. the directory from which you launched jupyter)
![alt text](image/jnote.png)

### Python Editor - Jupyter
To create anew notebook, select New, Python3.

![alt text](image/jupyter.png)

### Python Editor - Jupyter
To close this program, navigate the the <b> Running</b> tab and click the orange Shutdown button. Closing the notebook's page is  not sufficient to shutdown.
![alt text](image/shutdown.png)
### Python Editor - Jupyter
The Notebook Dashboard will list all of the notebooks (.ipynb), files, and subdirectories stored in the local working directory (i.e. the directory from which you launched jupyter)

## Python Editor - Jupyter
To create anew notebook, select New, Python3.

## Python Editor - Jupyter
To close this program, navigate the the Running tab and click the orange Shutdown button Closing the notebook’s page is not sufficient to shutdown.
### Python Editor – jupyter notebook

### Python Editor – jupyter notebook

- The body of the notbook is comprised of cells:
   - Markdown cells are used to build write regular (non-code)
  􏰀 text. More markdown here and see helpful cheatsheet. 
    - Code cells (default) are used to define the code which will be compiled (after pressing   or pressing Shift + Enter ) to produce output.
- You can inserts cells (either code/markdown) anywhere by clicking Insert > Insert Cell Above (or Insert Cell Below)
- Same thing goes for deleting/copying/pasting/undoing cells: see the Edit drop down menu bar.
### Python Editor – jupyter notebook
 You can create regular text and headings in markdown mode. Headings are indicated using # (subheadings use ##)
### Python Editor – jupyter notebook
This is what the markdown looks like after it is run:

### Python Editor – jupyter notebook
 After a cell is run, a number will appear in the square parenthesis (an asterisk * will appear for cells that are currently running). Every time we run that cell, this number will increase.

### Python Editor – jupyter notebook
- While jupyter notebook does autosave periodically, it is a good to save your work upon exiting (go to File > Save and Checkpoint or click the save icon).
- When we open the file again, it is not guaranteed that everything we need is in memory.
- It is good practice to “reset" the session by clicking Kernel > Restart and Run all Cells to ensure everything we need has been loaded into our working session (note that this will reset all of our numbers in the square brackets).

### Python: Hello World!
A traditional introduction into programming involves outputting the message "Hello World!"
In Python3, this is a simple as typing:
```text
print("Hello World!")
```
The print function will print to the terminal (standard output)
whatever data (number, string, variable) it is given.

You can use double quotes ("Hello world") or single quotes ('Hello world') just be consistent! E.g. 'Hello World!" will produce a error.

### Tripple Quotes
- If your message runs across multiple lines, you can use 3 quotations to denote multi-line strings.
- The sting begins with a ''' (or """) and ends with a (or """).
- Note that in this environment, we can use linebreaks (ie we can start a new line by pressing ENTER) and include the single and double quotes with our string.
### Try It: Python Printing
```text
 Example 1
Write a Python program that prints "I can start coding!"
```
```text
Example 2
Write a Python program that prints these three lines:
I know that I can program in Python. I am programming right now.
My awesome program has three lines!
```
``` text
 Example 3
How many of the following statements are TRUE?
1. Python is case-sensitive.
2. A command in Python must be terminated by a semi-colon. 3. Indentation does not matter in Python.
4. A single line comment starts with """.
5. The print command prints to standard input.
A) 0 B) 1 C) 2 D) 3 E) 4
```
```text
 Answer:
How many of the following statements are TRUE?
1. Python is case-sensitive.
2. A command in Python must be terminated by a semi-colon. 3. Indentation does not matter in Python.
4. A single line comment starts with """"".
5. The print command prints to standard input.
A) 0 B) 1 C) 2 D) 3 E) 4
```
``` text
 Answer:
How many of the following statements are TRUE?
1. Python is case-sensitive.
2. A command in Python must be terminated by a semi-colon. 3. Indentation does not matter in Python.
4. A single line comment starts with """"".
5. The print command prints to standard input.
A) 0  B) 1  C) 2 D) 3 E) 4
```
## Variables
Recall. . .
A variable is a name that refers to a location that stores a data value.
IMPORTANT: The value at a location can change using initialization or assignment.

### Variable Assignment
In python the assignment operator is “=".
We will use it to (re)set value of a variable.
   - Example: 
      num = 10
      message = "Hello world!"
### Python Variables
Variables are created when first assigned.
A variable type is dynamic and do not need to be declared.
It can store any particular type (e.g. int, float, strings, or Boolean) at any given time.
   - Example:
       val = 5
        val = "Hello" isAwesome = True
Recall: Boolean values can be either True or False. N.B. in Python case matters.
The type (string, int, float etc.) of the variable is determined by Python.

### Variable Rules
Variables are a name that must begin with a letter or an underscore and cannot contain spaces. All subsequent characters must be letters, numbers or underscores.
Variables are created when they are first used. There is no special syntax to declare (create) a variable.
Variable names are case-sensitive.
A programmer picks the names for variables, but try to make the
names meaningful and explain their purpose.
Avoid naming variables as reserved words (e.g. if, for, else). A reserved word has special meaning in the language.
```text
 Example 4
How many of the following variable names are valid? 1. name
2. string2
3. 2cool
 4. under_score 5. space name 6. else
A) 0 B) 1
C) 2
D) 3
E) ≥ 4

```
``` text
 Answer:
How many of the following variable names are valid?
 1. name
2. string2
3. 2cool
4. under_score 5. space name 6. else
A) 0 B) 1
C) 2
D) 3
E) ≥ 4
```
### Python Math Expressions

| Operation       | Syntax    | Example | Output   |
| :------------- | :----------: | -----------:  | -----------: |
|  Add |+  |5+3 |8  |
|Subtract|-| 10 - 2 |8|
|Multiply|* |5 * 3| 15|
|Divide|/| 8/4| 2|
|Modulus|% |9%4| 1|
|Exponent|**|5 ** 2|25|

### Expressions - Operator Precedence
Each operator has its own priority similar to their priority in regular math expressions:
1. Any expression in parentheses is evaluated first starting with the inner most nesting of parentheses.
2. Exponents
3. Multiplication and division (*, /, %)
4. Addition and subtraction (+,-)
 Recall:BEDMAS Brackets Exponents Division, Multiplication, (modulus), Addition and Subtraction
 Example: 20 - ((4 + 5) - (3 * (6 - 2))) * 4 = 32
### Python Expression Question
``` text
 Example 5
What is the value of this expression
                       8∗∗2+12/4∗(3−1)%5
HINT: Modulo is executed after multiplication and division; more
on this here.
```
A) 69    B) 65   C) 36    D) 16    E) 70

### Python Expression Question
```text
Answer:
What is the value of this expression
            8∗∗2+12/4∗(3−1)%5
HINT: Modulo is executed after multiplication and division; more
on this here.
```
A) 69 B) 65 C) 36 D) 16 E) 70
I think it’s good practice to be explicit with brackets. I.e., I might have written the above as:
```text
            8**2 + ((12/4)*(3-1))%5
```
### Try it: Python Variables and Expressions
```text
 Example 6
Write a program that prints the result of 35 + 5*10 
```
```text
Example 7
Write a program that uses at least 3 operators to end up with the value 99.
```
```text
Example 8
Write a program that has a variable called name with the value of your name and a variable called height storing your height in feet. Print out your name and height using these variables.
```
### Rules for Stings in Python
Strings are sequences of characters that must be surrounded by single or double quotes.
Any number of characters is allowed. The minimum number of characters is zero "", which is called the empty string.
Strings can contain most characters except enter, backspace, tab, and backslash. These special characters must be escaped by using the escape character: \
- Example:
    new line \n
    single quote \' 
    backslash \\ 
    double quote \''
### Strings
As mentioned previously, we can use triple quotes """ for a strings that contain single/double quotes and/or line breaks.
In addition, double quoted strings can contain single quoted strings and vice versa. Example:
name = 'Joseph "Joe" Jones'
storeName = 'Joe\'s Store'
storeName = "Joe's Store" # alternatively height = '''5'9"'''
print("""String that is really long
with multiple lines
     and spaces is perfectly fine""")

### Python String Indexing
Individual characters of a string can be accessed using square brackets ([]); the first character indexed at 0.
􏰀 - Example:
    str = "Hello" 
    print(str[1]) # e 
    print("ABCD"[0]) # A 
    print(str[-1]) # o
    # Negative values start at end and go backward
Read all more about strings here.
```text
 Example 9
How many of the following are valid Python strings?
1. ""
2. ''
3. "a"
4. " "
5. """
6. "Joe\' Smith\""
A) 1 B) 2 C) 4 D) 5 E) 6
```

```text
    Answer:
How many of the following are valid Python strings?
1. ""
2. ''
3. "a"
4. " "
5. """
6. "Joe\' Smith\""
A) 1 B) 2 C) 4 D) 5 E) 6
```
### Python String Functions and Methods
Suppose:
    st = "Hello" 
    st2 = "Goodbye"
| Operation       | Syntax    | Example | Output   |
| :------------- | :----------: | -----------:  | -----------: |
|  Length |len()  |len(st) |5 |
|Upper case|upper()| st.upper() |HELLO|
|Lower case|lower() |st.lower()|hello|
|Convert to a string|str()| str(9)|"9"|
|Concatenation|+ |st1 + st2|HelloGoodbye|
|Substring|[]|st[0:3] st[1:]|Hel ello|
|String to int|int()|int("99")|99|
## Dot Notation
􏰀 - Like VBA, you will notice that python uses the dot operator to perform methods on objects (read more here).
􏰀 - Every constant, variable, or function in Python is actually a object with a type and associated attributes and methods.
􏰀 - A method is a function that is attached to an object (read more about this here)
􏰀 - Here are some more examples of string methods.

## String Operators: Concatenation
The concatenation operator is used to combine two strings into a single string. The notation is a plus sign “+".
􏰀 - Example:
 ```text
 >>> st1 = "Hello"
>>> st2 = "World!"
>>> st3 = st1 + st2 # HelloWorld! >>> print(st1+st1)
HelloHello
>>> print(st3)
HelloWorld!
 ```
 ### String Operators: Concatenation
 Note that we must hard code spaces if we want them:
 ```text
 >>> st4 = st1 +" "+ st2 >>> print(st4)
Hello World!
 ```
 ```text
 Concatenate with numbers and strings
We must convert numbers to strings before concatenation.

 ```
 ```text
 >>> num = 5
>>> print(st1+str(num)) 
Hello5
 ```
 N.B. we can mix types in the print() function, i.e. without concatenation. Notice how print() inserts spaces between inputs:
 ```text
 >>> print(st1,num, 100, "hi there", "byethere")
     Hello 5 100 hi there byethere
 ```
### String Operators: Deleting objects
If you have been following along with me, you will find that the code on the previous slide does not work.
This is because str is no longer treated as a function because I assigned "Hello" to this object on slide ??.
To delete this object we can type:
```text
del str
```
Now we are free to use the function str() as desired.

```text
 Example 10
What is the output of this code?
st1 = "Hello"
st2 = "World!"
num = 5
print(st1 + str(num) + " " + st2)
A) Error
B) Hello5World! C) Hello5 World D) Hello 5 World
```
```text
 Answer:
What is the output of this code?
st1 = "Hello"
st2 = "World!"
num = 5
print(st1 + str(num) + " " + st2)
A) Error
B) Hello5World! C) Hello5 World! D) Hello 5 World!
```
### Substrings (slicing)
The substring function will return a range of characters from a string. The general syntax is st[start:end]
```text
Substring indexing/slicing
􏰀 - The start is inclusive the end is exclusive.
􏰀 - If start is not provided, it defaults to 0.
􏰀 - If end is not provided, it defaults to the end of the string.
 
```
 Example:
```text
st = "Fantastic" 
print(st[1])  # a
print(st[0:6]) # Fantas
print(st[4:]) # astic
print(st[:5]) # Fanta
print(st[-6:-2])# tast
```
```text
 Example 11
What is the output of this code:
st = "ABCDEFG"
print(st[1] + st[2:4] + st[3:] + st[:4])
A) ABCDCDEFGABCD 
B) ABCDEFGABC
C) BCDDEFGABCDE
D) BCDDEFGABCD 
E) BCDECDEFGABC
```
```text
 Answer:
What is the output of this code:
st = "ABCDEFG"
print(st[1] + st[2:4] + st[3:] + st[:4])
A) ABCDCDEFGABCD
B) ABCDEFGABC
C) BCDDEFGABCDE 
D) BCDDEFGABCD 
E) BCDECDEFGABC
```
### Split
The split function will divide a string based on a separator. Without any arguments, it splits on whitespace,
```text
>>> st = "Awesome coding! Very good!" 
>>> print(st.split())
['Awesome', 'coding!', 'Very', 'good!']
```
otherwise is splits where ever it sees the inputted separator:
```text
>>> print(st.split("!"))
['Awesome coding', ' Very good', '']
```
### Split
This is very useful when we have, for example, comma separated values (csv):
```text
>>> st = 'data,csv,100,50,,25,"use split",99' 
>>> print(st.split(","))
['data', 'csv', '100', '50',
'', '25', '"use split"', '99']
```
Note that the returned object is a Python list (more on these later).
```text
 Example 12
Assume:
􏰀 - name = "Joe" 
     age = 25
Write a Python program that prints out your name and age stored in variables like this:
```
```text
Example 13
Assume:
􏰀 - name = "Steve Smith"
Use substring, write a Python program that prints out the first
name and last name of Steve Smith like below. 􏰀
         - First Name: Steve
            Last Name: Smith
Bonus challenge: Recode so that it would work with any name.
```
### Print Formatting
One of the most obvious changes between Python 2 and Python 3 is how they use print:
            print "Hello"
and Python 3:
           print("Hello")
In Python3, the print method can accept parameters for formatting. See some examples on the next slide . . .
### Print Formatting
```text
print("Hi", "Amy", ", your age is", 21)
print("Hi {}, your age is {}".format("Amy",21)) 
print("Hi {1}, your age is {0}".format(21,"Amy")) print("Hi {name}, your age is {age}".format(age=21, name="Amy"))
```
- We can think of {} as placeholder arguments for the inputs given in format(<input0>, <input1>).
- By default, these inputs will be added in the string in order (the input0 will appear in the first place holder, input1 in the second place holder, etc.
- If we want to read input1 before input0, we need to refer to it by its integer index via {1} or by its name if we have provided one {age}
### Python Modules
A Python module or library is code written by others for a specific purpose. Whenever coding, make sure to look for modules that are already written for you to make your development faster! Modules are imported using the import command:
                 import <modulename>
Useful modules for data analytics:
􏰀 -Biopython (bioinformatics),
􏰀 -NumPy (scientific computing/linear algebra),
􏰀 -scikit-learn (machine learning), pandas (data structures), 􏰀 
    -BeautifulSoup (HTML/Web)
 
 ### Python Date and Time
Python supports date and time data types and functions. To use, import the datetime module using the following:
 ```text
 import datetime
 ```
The general syntax to import the module named mymodule is:
```text
import mymodule
```
You can choose to import only parts from a module, by using the from keyword. For example, if we just want the object person1 from mymodule type:
```text
from mymodule import person1
```
Read more about this here.

### Python Date and Time
We may choose to only import the datetime object from the datetime module (which happens to be the same name) using the following:
```text
from datetime import datetime
```
The datetime object has a method for formatting date objects
into readable strings. Read more here.

### Python Date and Time
Methods:

```text
now = datetime.now()
>>> now = datetime.now()
>>> print(now)
2018-10-07 12:31:43.830464
>>> current_year = now.year
>>> current_month = now.month
>>> current_day = now.day
>>> print("{}-{}-{} {}:{}:{}".format(now.year, now.month, now.day, now.hour, now.minute, now.second))
2018-10-7 12:31:43
>>> print("{}-{}-{} {}:{}:{}".format(now.year, now.month, now.day, now.hour, now.minute, now.second))
2018-10-7 12:31:43
```
### Python Clock
The time module, is another useful module for handle time-related tasks.
The time() function for example, returns the current time in seconds.
On Linux machines, this is an integer counting the number of seconds passed since January 1, 1970, 00:00:00 (recall from Lecture 2).
This function can be useful when we want to time how long a process takes within our program. See an example on the next slide.

### Python Clock
􏰀- Example:
>>> import time
>>> startTime = time.time()
>>> print("Start time:", startTime)
Start time: 1538941011.206657
>>> print("How long will this take?")
How long will this take?
>>> endTime = time.time()
>>> print("End time:", endTime)
End time: 1538941011.2094998
>>> print("Time elapsed:", endTime-startTime) 
Time elapsed: 0.0028429031372070312

### Python Input
To read from the keyboard (standard input), use the method input:1
􏰀 - Example:
  name = input("What's your name?") 
  print(name)
  age = input("What's your age?") 
  print(age)
  
### Try it: Python Input, Output, and Dates
```text
Example 14
Write a program that reads a name and prints out the name, the length of the name, the first five characters of the name.
```

```text
Example 15
Print out the current date in YYYY/MM/DD format.

```
### A comparison operator compares two values. 􏰀 
- Examples:
  5 < 10
  N > 5 # N is a variable. Answer depends on N.

 Comparison Operators in Python: 
 | Syntax      |Description|
| :-------------  |:-------------  |
|> |Greater than|
|>=| Greater than or equal|
|< |Less than|
|<=| Less than or equal|
|==| Equal (Note: Not "=" which is used for assignment!)|
|!=| Not equal|

### The result of a comparison is a Boolean value which is either True or False.

Conditions with and, or, not
A condition is an expression that is either True or False and may contain one or more comparisons. Conditions may be combined using: and, or, not.
Order of evaluation: not, and, or. May change order with parentheses.

 | True if:      |Syntax| Examples      |Outpu|
| :-------------  |:-------------  |:-------------  |:-------------  |
| both are true|and|True and True False and True|True False|
| either or both are T|or|True or True False or True False or False|True True False|
| false|not|not True not False| False True|

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
Table: The order of operations for logicals. See complete list here
|Syntext |Description|
| :-------------  |:-------------  |
|()|brackets|
|**|exponents|
|* / % MOD|Multiplication, division, modulo|
|+ -|Addition and subtraction|
|< <= > >=|Comparisons: less-than and greater-than|
|== !=|Comparisons: equal and not equal|
|and|and|
|or|or|
|nots always bind to the condition immediate next to it|

```text
### Tip:
I recommend always using brackets to avoid confusion.
```
```text
 Example 16
How many of the following conditions are TRUE? 
1. True and False
2. not True or not False
3. 3 + 2 == 5 or 5 > 3 and 4 != 4
4. (1 < 2 or 3 > 5) and (2 == 2 and 4 != 5)
5. not (True or False) or True and (not False)

A) 1 B) 2 C) 3 D) 4 E) 5
```



