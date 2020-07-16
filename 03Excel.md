## Spreadsheets: Microsoft Excel Part 1 of 3

### Why Spreadsheets and Microsoft Excel?
Spreadsheets are the most common, general-purpose software for data analysis and reporting.

Microsoft Excel is the most popular spreadsheet program with hundreds of millions of installations.
- The spreadsheet concepts translate to other products. 

Excel and spreadsheets are not always the best tool for data analysis, but they are great for quick analysis, reporting, and
sharing.

Follow along with the examples by downloading the **03ExcelPartI.xlsx** and **DemoPartI.xlsx** file from CANVAS.

### Spreadsheet Overview
A spreadsheet organizes information into a two-dimensional array of cells (a table).

A cell has two components:
- an address - specified given a column letter and row number
- a location - that can store a number, text, or formula

The power of a spreadsheet is that we can write simple formulas (commands) to perform calculations and immediately see the results of those calculations.

Spreadsheets are very common in business and reporting applications.

### Excel Ribon
**ribbon** The Excel ribbon is the strip of icons above the worksheet area. It replaces the menus and toolbars found in Excel 2003 and earlier.  
**ribbon tab** contains multiple commands logically sub-divided into groups  
<img src="/source%20material/lectures/03Excel/img/ribbon.png" alt="ribbon" width="600" >  
[image source](https://www.ablebits.com/office-addins-blog/2019/07/02/excel-ribbon-guide/)

### Workbook vs. worksheets
**workbook** A workbook is the name given to an Excel file and contains one or more worksheets.  
**worksheet** A worksheet (or sheet/spreadsheet) is a single page in a file created with an electronic spreadsheet program.  
For example 03ExcelPartI.xlsx is a *workbook* that contains two *worksheets*. The name of these worksheets are QuarterSales and AnnualSales.

###Adding and renaming worksheets
To add a new worksheet we simply the plus sign located to the right of the worksheets.  
<img src="/source%20material/lectures/03Excel/img/rename.png" alt="rename" width="700" >  
By default, the worksheets are named Sheet1, Sheet2, Sheet3, and so on, but you can change these names by double clicking on the tab and typing an alternate name.  

- To Move a sheet, drag the sheet tab to the location that you want along the row of sheet tabs.
- To Copy a sheet
    1. Hold down Ctrl /Option (Windows/Mac).
    2. Drag the sheet tab to the location that you want the copied sheet to appear along the row of sheet tabs.
**Important** Release the mouse button before you release Option /Ctrl .
- To move/copy your worksheet to another workbook, you can right click the corresponding worksheet tab and select Move
- Copy. Select the desired workbook from the dropdown menu. Alternatively, you could follow the options outlined [here]
(https://support.microsoft.com/en-us/office/move-or-copy-worksheets-or-worksheet-data-47207967-bbb2-4e95-9b5c-3c174aa69328?ui=en-us&rs=en-us&ad=us)


### Spreadsheet Addressing
A cell is identified by a column letter and row number.
<img src="/source%20material/lectures/03Excel/img/ExcelSheet.png" alt="ExcelSheet" width="700" >  
Notice how the *active cell* (the cell highlighted by the green rectangle in the spreadsheet) also displays its cell identifier in name
box located to the left of the formula bar.

- The *rows* in a spreadsheet are *numbered* starting from 1.
- The *columns* are represented by *letters*.
    - **A** is column 1, **B** is column 2, . . . , **Z** is column 26, **AA** is column 27, . . .
- A cell is identified by putting the column letter first then the row number.
    - e.g. **B3** is the 2nd column and the 3rd row.
Question: What column number is **AD**? How about **BAD**?  
<img src="/source%20material/lectures/03Excel/img/ColumnRef.png" alt="ColumnRef" width="250" >  

### Spreadsheet Data Entry
An entry is added to a cell by clicking on it and typing in the data.
- The spreadsheet attempts to detect the data type and format it accordingly. It is also possible to manually *format* the data
<img src="/source%20material/lectures/03Excel/img/CellFormat.png" alt="CellFormat" width="600" >   

### Date and Type Formats
- Excel stores dates and time as a date serial number.
- The earliest date permitted by Excel is January 1, 1900 (which has a date serial number equal to 1).
- [DATEVALUE()](https://support.microsoft.com/en-us/office/datevalue-function-df8b07d4-7761-4a93-bc33-b7471bbff252?ui=en-us&rs=en-us&ad=us)
function converts text to a date serial number which we can then format to display the day however we want
- Alternatively we could use the [DATE(year, month, day)](https://exceljet.net/excel-functions/excel-date-function) function which takes the arguments:  
**year** - Number for year.  
**month** - Number for month.  
**day** - Number for day.  
- It is important to note that Excel dates require a year, month, and day.
- That is, if you are missing a year, for example, Excel won’t be able to format that cell as a date unless we provide a year.
- One trick is to give your data an arbitrary year that you hide when you format your cells.
- For example, we could replace January with January 1, 2019 and format the cell to only display the month.

|Cell Format| Cell display|  |
|----| ---- | ----- |
|General| January |(treated as text)|
|Date |2019-01-01 |(treated as serial number 43466)|
|Custom |January |(treated as serial number 43466)|

- Formatting data helps users read and understand data and is especially important for numbers and dates.
- To change the format of a serial date, click the down arrow in the format drop down menu and select **More Number Formats**; this will open up the Format Cells pop-up box
<img src="/source%20material/lectures/03Excel/img/DateType.png" alt="DateType" width="400" >  

- You can use either built-in or custom formats or [custom formatting]
(https://www.ablebits.com/office-addins-blog/2015/03/11/change-date-format-excel/#custom-date-format) (see a summary of these on the next slide)
- For example, applying the custom format of dd/mmm-yy on the date January 1, 2005 would display 01/Jan-05.
- You can also accomplish this type of formatting using the [TEXT()](https://www.ablebits.com/office-addins-blog/2015/04/08/convert-date-text-excel/) 
function. These cells, however, will be treated as text, not dates.

### Custom Date Options
Here are some examples of custom formatting options. [Source: ablebits.com]
(https://www.ablebits.com/office-addins-blog/2015/03/11/change-date-format-excel/#custom-date-format)

**Example (January 1, 2005)**  
|**Code**| Description| Result|
|-----|------------|------|
|m| Month number without a leading zero |1|
|mm |Month number with a leading zero |01|
|mmm |Month name, short form |Jan|
|mmmm |Month name, full form |January|
|mmmmm |Month as the first letter |J <sup>1</sup>|
|d |Day number without a leading zero |1|
|dd |Day number with a leading zero |01|
|ddd |Day of the week, short form |Mon|
|dddd |Day of the week, full form |Monday|
|yy |Year (last 2 digits) |05|
|yyyy |Year (4 digits) |2005|  

<sup>1</sup>(stands for January, June and July)  

### Currency vs Accounting
It is worth mentioning the difference between *Currency* and *Accounting* as they are very similar.
- Currency places the dollar sign to the immediate left of the number while Accounting places the dollar sign on the left edge of the cell.
- Currency displaces zeros as $0.00 while Accounting denotes zeros with dashes
- The Accounting format displays negative numbers in parentheses.
<img src="/source%20material/lectures/03Excel/img/currencyVsAccounting.png" alt="currencyVsAccounting" width="250" >   


### Spreadsheet Formatting (Windows)
A text editor shortcut will allow you to format cells in bold, italics, underline, fonts, colours, justify, etc.  
<img src="/source%20material/lectures/03Excel/img/FormatShortcut.png" alt="FormatShortcut" width="600" >  

### Try It!
> **Exercise** \
Make a copy of the QuarterSales worksheet and call it QuarterSalesFormat. Format the headers of the QuarterSales worksheet to be **bold**, <ins>underlined</ins> and centered.  

> **Exercise** \
Format all monetary cells to the format *Currency*


### Spreadsheet Selecting Multiple Cells
There are a number of ways of selecting multiple cells at a time:
1. With the mouse, (left) click and drag mouse to select a rectangle region of cells.
1. With keyboard, hold SHIFT key and use arrow keys to select a rectangle region of cells.
1. With mouse and keyboard, while holding CTRL (windows)/Cmnd (mac) key, (left) click on individual cells to select non-contiguous cells.
1. Click on a row number to select a whole row<sup>2</sup> or select the first column in that row and press SHIFT + Cmnd /Cntrl + :arrow_right:
1. Click on a column header to select a whole column2 or select the first row in that column and SHIFT + Cmnd /Ctrl + :arrow_down:
See more keyboard shortcuts [here](https://exceljet.net/keyboard-shortcuts). (eg. Cmnd /Ctrl + A select entire worksheet) [See demo](https://www.youtube.com/watch?v=L9n3tbufCyk&feature=youtu.be)  

<sup>2</sup> or until the first empty cell


### Range Selecting Cells Example
<img src="/source%20material/lectures/03Excel/img/SelectingCells.png" alt="SelectingCells" width="600" >  

### Selecting non-contiguous
<img src="/source%20material/lectures/03Excel/img/SelectingIndCells.png" alt="SelectingIndCellss" width="600" >  

### Manipulating Cells
Once you have selected one or more cells, there are several common actions you can perform:
1. DELETE
- delete the contents of all cells by pressing delete key
- delete the contents and the cell locations (then shift remaining) by selecting Edit menu, Delete. . . or Delete. . . pop-up menu (brought up by right click).
1. Cut, Copy, Paste
- cut - copies selected cells to clipboard and removes from document (Cmnd /Ctrl + X )
- copy - copies selected cells to clipboard (Cmnd /Ctrl + C )
- paste - copies cells in clipboard to sheet starting at currently selected cell (Cmnd /Ctrl + V )
1. Add selected cells to a formula (requires that you were previously constructing a formula before selecting the cells).

### Cut, Copy, Paste
Alternatively you could use the command button shortcuts located in the *Home* tab on the ribbon.  
<img src="/source%20material/lectures/03Excel/img/CutCopyPaste.png" alt="CutCopyPaste" width="600" >  


### Paste Button Ribbon
- Some buttons in the ribbon open a menu with additional options.
- For example, the Paste button opens a menu with additional pasting options such as **Paste Values**, **Formulas**,. . .which will be useful to us later.
<img src="/source%20material/lectures/03Excel/img/pasteOpt.png" alt="pasteOpt" width="600" >  

### Manipulating Cells - Filling
*Filling* combines copy and paste. There is a small box or tab beyond the cell’s lower right corner (fill handle). Grab it with the cursor and pull to other cells.
<img src="/source%20material/lectures/03Excel/img/Filling.png" alt="Filling" width="600" >  

Double clicking that lower corner will quickly copy and paste that formula to the end of the data (or until the first blank row).  
<img src="/source%20material/lectures/03Excel/img/doubleClick.png" alt="doubleClick" width="600" >  

[See demo on YouTube](See demo on YouTube)

### Hiding Columns and Rows
You can hide a column or row by right-clicking on the column or row header and selecting *Hide*.
- The column/row still exists but will not be displayed or printed until we select *Unhide*. [Link to my demo on YouTube](https://www.youtube.com/watch?v=2Z0kPQfhDbE&feature=youtu.be)  
<img src="/source%20material/lectures/03Excel/img/Hide.png" alt="Hide" width="600" >  

### Selecting Cells Question
**Example 1**  
Which method allows you to select non-contiguous cells in a spreadsheet?  
A) hold SHIFT key and use arrow keys  
B) With the mouse left click on a cell and drag mouse  
C) hold CTRL (windows)/Cmnd (mac) key and use arrow keys  
D) hold CTRL (windows)/Cmnd (mac) key and left click on cells  

### START SOLUTIONS HERE
**Example 1**  
Which method allows you to select non-contiguous cells in a spreadsheet?  
A) hold SHIFT key and use arrow keys  
B) With the mouse left click on a cell and drag mouse  
C) hold CTRL (windows)/Cmnd (mac) key and use arrow keys  
**D) hold CTRL (windows)/Cmnd (mac) key and left click on cells**  
### END SOLUTIONS HERE

### Entering Formulas
A *formula* is any expression that begins with an equal sign (=).
- The equal sign means that a calculation must be done to compute the cell value.
<img src="/source%20material/lectures/03Excel/img/formula.png" alt="formula" width="600" >  

### Formula Expressions
A formula expression can consist of literals (numbers, text strings), operators, functions (eg. MAX(), AVERAGE()), and cell references.

Simple mathematical expressions:
- = 1 + 5
- = 1.5 * 3.14 + 42

Common functions:
```
- = ROUND(PI(),2) // Result is 3.14
- = CONCATENATE("Hello", " World") // Hello World
```
Other common functions for trigonometry, dates, and finance are available. See a full list of functions [here](https://support.microsoft.com/en-us/office/excel-functions-alphabetical-b3944572-255d-4efb-bb96-c6d90033e188?ui=en-us&rs=en-us&ad=us)


### Using Formulas
- In order to use functions correctly, you need to follow a certain structure, or *syntax*.
- The basic syntax for a function is the equals sign (=), the function name (eg, SUM), and one or more *arguments/inputs* within parenthesis. For example:
    ```
    =SUM(1,2,3)
    ```
    Once we press ENTER (or leave the cell), it will display the result, i.e. *output*, of the formula (in this case is 6). Returning to that cell will display the formula in the formula bar.
- N.B. if you function has no arguments, you will still need to type the parenthesis. For example =NOW() returns the current date and time as output.


### Using Excel Functions
- You can get help on any function by searching its name in Excel’s drop down Help menu
<img src="/source%20material/lectures/03Excel/img/Help.png" alt="Help" width="800" >  

- Alternatively, you can navigate to the **Formulas** tab in the ribbon and select the <img src="/source%20material/lectures/03Excel/img/insertfunction.png" alt="insertfunction" width="30" > button (there is also a shortcut to this button directly beside the formula bar <img src="/source%20material/lectures/03Excel/img/ficon.png" alt="insertfunction" width="30" >). This will bring up a **Formula Builder** window which contains the name of all the functions in Excel, with a search and description on how to use each function.



### Arrays
Alternatively we could have created an array using {} to compute our sum:
=SUM({1,2,3})
This is equivalent to the following calculation:

These examples and others can be found in DemoPartI.xlsx on Canvas

