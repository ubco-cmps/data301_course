### Computer Terminology
There is a tremendous amount of terminology related to technology.\
Using terminology precisely and correctly demonstrates understanding of a domain and simplifies communication.\
We will introduce terminology as needed.

### Basic Computer Terminology
- A **computer** is a device that can be programmed to solve problems.
- **Harware** includes the physical components of computer
    - (eg. central processing unit, monitor, keyboard, computer data storage, graphic card, speakers).
- **Software** programs that a computer follows to perform
functions
    - (eg. operating system, internet browser).
- **Memory** is a device which allows the computer to store data either temporarily (lost when computer reboots, eg.
RAM) or permanently (data is preserved even if power is lost, eg. hard drive).
- There are many different technologies for storing data with varying performance.
- Some live inside your computer while others are portable and can be used on difference devices (e.g. USB drives).


### “The Cloud”
“The Cloud" is not part of your computer but rather a network
of distributed computers on the Internet that provides storage,
applications, and services for your computer.

Examples:
- **Dropbox** is a cloud service that allows you to store your files on machines distributed on the Internet.
Automatically synchronizes any files in folder with all your machines.
- **iCloud** is an Apple service that stores and synchronizes your data, music, apps, and other content across Apple devices.
- [**Google Docs**](https://www.google.com/docs/about/) you can write, edit, and collaborate wherever you are. For free.


### What is data?
> **Data**: information, especially facts or numbers, collected to be examined and considered and used to
help decision-making, or information in an electronic form that can be stored and used by a computer.
– [Cambridge Dictionary](https://dictionary.cambridge.org/dictionary/english/data)

However, is can be argued (see [this article](https://siliconangle.com/2014/03/05/data-does-not-equal-information-bigdatasv/) for example) that
data &ne; information.\
In addition, on might refer to *raw* data as a collection of number/facts that don’t have meaning until it has been analyzed or has been given meaning.

### How is data measured?
- Computers represent data [digitally](https://homepage.cs.uri.edu/faculty/wolfe/book/Readings/Reading02.htm)
meaning that data is represented using discrete units called as bits (Binary Digits).
- The real-world is *analog* where the information is encoded on a continuous signal (spectrum of values, ie. infinite sounds/colours).
> “Like with the artist’s abstract composition, the trick is to take all of the real-world sound, picture,
number, etc. data that we want in the computer and convert it into the kind of data that can be
represented in (on/off) switches.” – [University of Rhode Island](https://computing-concepts.cs.uri.edu/wiki/Data_Representation_For_Computing)

Data size is measured in bytes.
- A bit is either a 0 or a 1.
- A *byte* contains 8 *bits* (*B*inary Dig*its*)
- A *nibble* contains 4 *bits* (*B*inary Dig*its*)  
** image maybe??**
Larger units:
- kilobyte (KB) = 1000 bytes
- megabyte (MB) = 106 bytes (or 1000 KB)
- gigabyte (GB) = 109 bytes (or 1000 MB)
- terabyte (TB) = 1012 bytes (or 1000 GB)
- petabyte (PB) = 1015 bytes (or 1000 TB)
- exabyte (EB) = 1018 bytes (or 1000 PB)
- zettabyte (ZB) = 1021 bytes (or 1000 EB)



### Memory/Data Size
**Memory size** is a measure of memory storage capacity in bytes. It represents the maximum capacity of data in the device.

**Example 1**\
Given this flask, assume the red liquid is data and each mark represents 100 MB of data. Select a true statement.\
A) Memory size is 200 MB.\
B) Flask can hold 0.5 GB of data.\
C) Data size is about 200 KB.\
D) Data size of 1000 KB would "overflow device".\
E) All of the above statements are false.

<img src="/source%20material/lectures/02DataRep/img/flask.png" alt="flask" height="60" >

### START SOLUTIONS HERE
**Example 1**\
Given this flask, assume the red liquid is data and each mark represents 100 MB of data. Select a true statement.\
A) Memory size is 200 MB. *~500MB*\
**B) Flask can hold 0.5 GB of data.**\
C) Data size is about 200 KB. *~200 MB*\
D) Data size of 1000 KB would "overflow device". *1000 KB = 1 MB < 500 MB*\
E) All of the above statements are false.
### END SOLUTIONS HERE


### Analog vs. Digital: Thermometer example
A thermometer contains liquid which expands and contracts in response to temperature changes.

The liquid level is analog, and its expansion continuous over the temperature range.  

This information can be represented using discrete units using digital thermometer, for example.

<img src="/source%20material/lectures/02DataRep/img/thermo.png" alt="thermo" height="160" >
<img src="/source%20material/lectures/02DataRep/img/dtheorm.png" alt="dtheorm" height="160" >


### Conversion of Analogue to Digital
How would you digitize this analog data into 10 discrete points?
<img src="/source%20material/lectures/02DataRep/img/Analog2Digital.png" alt="Analog2Digital" width="600" >
<img src="/source%20material/lectures/02DataRep/img/Analog2DigitalB.png" alt="Analog2DigitalB" width="600" >

### Why go digital over analogue?
1. Computers are digital and many home electronics are interfacing with computers.
1. Analog signals are more susceptible to noise that degrades the quality of the signal (sound, picture, etc.). The effect of
noise also makes it difficult to preserve the quality of analog signals across long distances.
1. Reading data stored in analog format is susceptible to data loss and noise. Copying analog data leads to declining quality.

A computer memory consists of billions of bits which allows for an almost limitless number of possible states.
Bits are combined to allow more information to be represented including characters and numbers
- eg. 0 = off, 1= on
- 01100010 = “b”
To do this, it needs a set of rules on how to translate binary information into things like numbers, text, photos, video, etc.

### Bits and Bytes
Numbers are encoded in a computer using a fixed number of bits (usually 32 or 64).
| # of bits | Unique patterns | # of unique patterns |
| ----------- | ----------- | ----------|
| 1 | 0,1 | 2<sup>1</sup> = 2 |
| 2 | 00, 01, 10, 11 | 2<sup>2</sup> = 4 |
| 3 | 000, 001, 010, 100, 011, 101, 110, 111 | 2<sup>3</sup> = 8|
|...|...|...|
| 32 |...|2<sup>32</sup> = 4, 294, 967, 296|
| 64 |...|2<sup>64</sup> > 18 quintillion|

The more bits you have, the more values you can represent.



### Decimal System
- Assuming we use a 32-bit register, we now need a way of mapping or converting these unique patterns of 0s and 1s to a specific meaning (in this case a number).
- A **binary number** is a number expressed using only 0s and 1s (ie. in the base-2 numeral system or **binary numeral system**).
- Before discussing the binary system, let’s first discuss a conversion system you should all be familiar with: the **decimal system**.

The decimal system uses digit placeholders, say , that can take on values from the set {0; 1; 2; 3; 4; 5; 6; 7; 8; 9} \
The number of digits in the set is called the **base**. So the base for this system is 10. \
Reading from right to left, the first placeholder represents ones, the second, 10s, the third hundreds, and so on . . .

> We write eight million, two hundred ninety thousand, eight hundred forty one as:\
 8 2 9 0 8 4 1 \
= 8 * 10<sup>6</sup> + 2 * 10<sup>5</sup> + 9 * 10<sup>4</sup> + 0 * 10<sup>3</sup> + 8 * 10<sup>2</sup> + 4 * 10<sup>1</sup> + 1 * 10<sup>0</sup>
``` diff
- Need to visualize the placeholder
```
### Representing Data: Integers
A binary system works in the same way, only now, the placeholder must take a value from the set {0; 1}.\
To put another way, instead of using base 10 wherein: 
ones=10<sup>0</sup>, tens=10<sup>1</sup>, hundreds=10<sup>2</sup>, thousands=10<sup>3</sup>, etc.\
we use base 2 where:
ones=2<sup>0</sup>, ‘twos’=2<sup>1</sup>, ‘fours’=2<sup>2</sup>, ‘eights’=2<sup>3</sup>, etc. .

> For example, the integer 164 would be expressed as \
1 0 1 0 0 1 0 0 \
164 = 128 + 32 + 4 \
1 * 2<sup>7</sup> + 0 * 2<sup>6</sup> + 1 * 2<sup>5</sup> + 0 * 2<sup>4</sup> + 0 * 2<sup>3</sup> + 1 * 2<sup>2</sup> + 0 * 2<sup>1</sup> + 0 * 2<sup>0</sup>
``` diff
- Need to visualize the placeholder
```


### Converting decimal to binary
There are a number of websites online ([ex 1](https://www.rapidtables.com/convert/number/decimal-to-binary.html), 
[ex 2](https://binary-system.base-conversion.ro/convert-positive-unsigned-integers-from-decimal-system-to-unsigned-binary.php)) 
that can convert numbers from our decimal system (or simply decimal)
to the binary system (or simply binary). However the steps to do it on paper are quite easy:
1. Divide the decimal number by 2.
1. Keep track of the integer quotient for the next iteration.
1. Keep track of the the remainder for the binary digit.
1. Repeat steps 1–3 until the quotient is equal to 0.
1. Construct the base 2 representation, by taking all the remainders starting from the bottom up.

Let’s look at an example. . .

**Exercise**\
Convert 37<sub>10</sub> from base 10 (i.e decimal) to binary base 2.

**Try it!**\
Convert 132<sub>10</sub> from base 10 (i.e decimal) to binary base 2.

**Question**\
Does any see a problem with this system?\
**Hint**: this system is called *unsigned binary*


### Representing Data: Integers
Recall a 32-bit register can store 2<sup>32</sup> different values. \
The range of integer values it will represent depends on the *encoding* type.

**Unsigned Binary** Range is 0 through 4,294,967,295 = (2<sup>32</sup> - 1)

**2’s compliment** We use the first bit to store the sign (0=+, 1=-), so the range is -2,147,483,648 (-2<sup>31</sup>) through 2,147,483,647 (2<sup>31</sup> - 1) .

### Representing Data: Real Numbers
There are many standards for representing real numbers which include integers, rationals, fractions (eg -4, &Sqrt;2, 1/3).\
The most common is [IEEE 754](https://en.wikipedia.org/wiki/IEEE_754) format which uses floating-point (FP) representation.

Similar to scientific notation, FP expresses real numbers using a base and an exponent:
N = m * r <sup>e</sup>
- m = mantissa (the decimal component of a number)
- e = exponent
- r = radix\
IEEE 754 adopts a binary FP where r = 2.


### Representing Data: Doubles and Floats [Photo souce](https://blog.penjee.com/binary-numbers-floating-point-conversion/)
Modern computers adopt *IEEE 754* for floating-point numbers with two representation schemes:

**32 bit/single-precision (or “float’)** 1-bit sign; 8-bit exponent; 23-bit mantissa
<img src="/source%20material/lectures/02DataRep/img/DataRep_Float.png" alt="DataRep_Float" width="600" >

**64 bit/double-precision** 1-bit sign; 11-bit exp; 52-bit mantissa
<img src="/source%20material/lectures/02DataRep/img/DataRep_Double.png" alt="DataRep_Double" width="600" >

- As before, let’s revisited a related concept (which we all would have learned about in high school) to make this
new concept easier to understand.
- Scientific notation operates in very much the same way as FP representation.
- Key features of normalized standard scientific notation:
    - There is a single non-zero digit to the left of the decimal point
    - The power indicates how far we’ve moved the decimal point to the left (+ exponent) or right (- exponent)


### Representing Data: Normalized scientific notation
> **Example: Normalized scientific notation:**\
The number 55,125.17 in normalized scientific notation is:\
5:512517 * 10<sup>4</sup>

Key features of normalized standard scientific notation:
- 5.512517 is our **mantissa**
- 4 is our **exponent**
- 10 is our **radix**


> **Example: Normalized scientific notation:**\
The number 0.000 000 007 51 in normalized scientific notation is:\
7.51 * 10<sup>-9</sup>

Key features of normalized standard scientific notation:
- 7.51 is our **mantissa**
- -9 is our **exponent**
- 10 is our **radix**


### Converting decimal fraction to binary - Phase 1
1. Convert the integer part of decimal to binary (as on [this slide]**add hyperlink**)
1. Convert the fractional part of decimal to binary equivalent
    1. Multiply the fractional part by 2.
    1. Keep track of the integer part for the binary digit
    1. Keep track of the fractional part for the next iteration
    1. Repeat steps 1–3 until the fractional part is equal to 0 or we have enough digits to fill the mantissa
    1. Construct the base 2 representation, by taking all the integer parts starting from the top
1. Write the result from step 1 to the left of the decimal and the result from step **2** to the right of the decimal.
### Converting decimal fraction to binary - Phase 2
4. Normalize the result from step 3 by shifting the decimal (either left or right) so that only one non zero digit
remains to the left of the decimal. The number of places we shift will determine our exponent
5. Adjust the exponent by adding 2<sup>(8-1)</sup> - 1 to the exponent
6. Convert the result in step 5 to to binary (as on [this slide](**add hyperlink**))
7. Construct the binary number:
    1. Fill in the sign bit (0 = positive, 1 = negative)
    1. Fill in the exponent bits with the result from step 6
    1. Fill in the mantissa with the first 23 digits to the right of the decimal from step 4
    
    
    
### Representing Data: Doubles and Floats

**Example: 32-bit single precision**\ 
The number -37.17 stored as 4 consecutive bytes is: \
| sign | exponent | mantissa |
| ----------- | ----------- | ----------|
| 1 | 1000 0100 | 001 0100 1010 1110 0001 0100 |

**Step 1** Convert the number to binary scientific notation
- Integer part (37) in binary 100101 (as shown in the previous exercise (**hyperlink)))


**Step 2** Convert the fractional part of decimal to binary equivalent
1) 0.17 * 2 = 0 + 0.34 
2) 0.34 * 2 = 0 + 0.68    
3) 0.68 * 2 = 1 + 0.36
4) 0.36 * 2 = 0 + 0.72
5) 0.72 * 2 = 1 + 0.44
6) 0.44 * 2 = 0 + 0.88
7) 0.88 * 2 = 1 + 0.76
8) 0.76 * 2 = 1 + 0.52
9) 0.52 * 2 = 1 + 0.04
10) 0.04 * 2 = 0 + 0.08
11) 0.08 * 2 = 0 + 0.16
12) 0.16 * 2 = 0 + 0.32
13) 0.32 * 2 = 0 + 0.64
14) 0.64 * 2 = 1 + 0.28
15) 0.28 * 2 = 0 + 0.56
16) 0.56 * 2 = 1 + 0.12
17) 0.12 * 2 = 0 + 0.24
18) 0.24 * 2 = 0 + 0.48
19) 0.48 * 2 = 0 + 0.96
20) 0.96 * 2 = 1 + 0.92
21) 0.92 * 2 = 1 + 0.84
22) 0.84 * 2 = 1 + 0.68
23) 0.68 * 2 = 1 + 0.36
24) 0.36 * 2 = 0 + 0.72

. . . continued\
We didn’t (and won’t) get a fractional part equal to zero but since we have enough iterations to fill the mantissa we can stop.\
0.17<sub>10</sub> = 0.001010111000010100011110 <sub>...2</sub>

**Step 3**: Write the result from step 1 to the left of the decimal and the result from step 2 to the right of the decimal.
37.17<sub>10</sub> = 100101.001010111000010100011110102

**Step 4**: Normalize the result from step 3 by shifting the decimal (either left or right) so that only one non zero digit
remains to the left of the decimal (form 1.xxxxxx).\
= 100101.001010111000010100011110102
= 1.0010100101011100001010001111010<sub>2</sub> * 2<sup>5</sup>

Since decimal moved 5 spaces to the left, the exponent becomes (positive) 5.

**Step 5** Adjust the exponent by adding 2<sup>(8-1)</sup> - 1 to the exponent \
5 becomes 5 + 2<sup>(8-1)</sup> - 1 = 132

**Step 6** Convert the result in step 5 to to unsigned binary (done on [this slide](**add hyperlink**))
132<sub>10</sub> = 1000 0100<sub>2</sub>


### Why the exponent adjustment?

<img src="/source%20material/lectures/02DataRep/img/binary-floating-point-8-bit-range.png" alt="binary-floating-point-8-bit-range" width="400" >\
[Photo souce](https://blog.penjee.com/binary-numbers-floating-point-conversion/)

The 8-bits set aside for the exponent can represent 28 = 256 different values (0– 255 using unsigned binary)

However, had the decimal moved to the right, the exponent would have been a negative number.

To accommodate negative integers in unsigned binary system we simply allow he lower half of the range (0–127) to be used
for negative exponents and the upper other half (128–255) will be used for positive exponents.

- Our unadjusted positive exponent (eg 5) is now adjusted to 5 + (28..1 .. 1) = 5 + 127 = 13210 = 1000 01002.
- To provide another examples:
> -8 is represented as -8 + 127 = 11910 = 011101112\
  0 is represented as 0 + 127 = 12710 = 011111112\
  +1 is represented as +1 + 127 = 12810 = 100000002
- This scheme (called [Excess-127](https://en.wikipedia.org/wiki/Offset_binary#Excess-127)) supports unadjusted exponents of -127 to 128

**Step 7** Construct the binary number:
1. Fill in the sign bit (0 = positive, 1 = negative)
    1. since -37.17 is a negative number the first bit = 1.
    <img src="/source%20material/lectures/02DataRep/img/example01.PNG" alt="example01" width="400" >
    
1. Fill in the exponent bits with the result from step 6
    1. Recall our unadjusted positive exponent (eg 5) was adjusted to 5 + (2<sup>(8-1)</sup> - 1) = 5 + 127 = 132<sub>10</sub> = 1000 0100<sub>2</sub>.    
    <img src="/source%20material/lectures/02DataRep/img/example02.PNG" alt="example02" width="400" >
    
1. Fill in the mantissa with the first 23 digits to the right of the decimal from step 4 \
    <del>1.</del>00101001010111000010100<del>01111010</del> \
    <img src="/source%20material/lectures/02DataRep/img/example03.PNG" alt="example03" width="400" >
    
    
    
### Precision
Take note of the fact that we deleted some information in order to get the number -37.17 to fit into the 32-bit single representation.\
As a result, the storage of this number is -37.1699981689453125.
> **Lack of precision**\
Rounding errors will occur since some real numbers will have repeating bit representations. This lack of precision may be important in scientific applications!

Rational numbers of the form x=2k , where x and k are integers, can have exact fractional binary representation.
> For example:
- 0:015625 = 1=26, ..1:5 = ..3=2, 96 = 3=2..5 will have exact representation.
- 0:1; 123:4; 0:025 will not have exact representation.

**Claire you are at 02DataRepAnswer.pdf pg48/96**

