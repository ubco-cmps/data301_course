Lab 1: Excel - Analyzing and Reporting Data
===========================================

## Accept the lab

To accept this lab on GitHub Classroom, [you must click this link](https://classroom.github.com/a/LT5XhYBO).

Here is a video showing you how to accept the assignment and start working on it.
The part of JupyterLab and Notebook is not relevant for us this week.

<div class="container youtube">
<iframe class="responsive-iframe" src="https://www.youtube-nocookie.com/embed/OrfFTdkghZ4" frameborder="0" allow="accelerometer; autoplay="0"; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

## Requirements

In this lab, we will use Microsoft Excel to manipulate, transform, and analyze data. Please note that Microsoft Excel must be used to complete this lab. It may be possible to use other spreadsheet software such as Google Sheets, LibreOffice, or similar. If you do not have a copy of Excel, you can find a link on the [Install Stack](https://firas.moosvi.com/courses/data301/notes/week02/lab.html) to help you install it on your computer.

**This lab is to be completed individually.**

## **Objectives**

1.  Load CSV data into Excel and convert into a spreadsheet for processing.
2.  Perform simple data cleaning (missing, incorrect) values, data type conversion, and cell formatting.
3.  Understand and use Excel cell addressing including absolute addresses.
4.  Create formulas including string and date functions, aggregate functions, and formulas with decisions.
5.  Perform sorting and filtering to transform data for analysis.
6.  Produce charts to visualize data and communicate results including using trendlines and sparklines.

## **Analysis Problem and Goals**

This scenario involves analyzing data collected by sensors and applies to a variety of real-world applications including environmental monitoring (temperature, precipitation, wind, etc.), industrial and production sensors, and even monitoring of people using mobile devices and GPS. There are multiple monitoring _sites_. Each site has one or more _sensors_ that take a reading in a given interval. Typically, _readings_ are either an integer or floating-point value. In this lab, each reading will consist of:

-   **timestamp** \- when the reading occurred
-   **siteid** \- an integer identifying a site uniquely
-   **sensorid** \- an integer identifying a sensor at a particular site uniquely
-   **value** \- an integer reading between 0 and 100, although data may be missing or incorrect

Sensor readings are done every 15 minutes but may be missed (no data) or contain incorrect values out of range (less than 0 and above 100) or values that indicate error conditions (not at a number at all).

[Click here to download the data set](./data.csv?canvas_download=1&canvas_qs_wrap=1 "data.csv") that consists of 4 sites each with 3 sensors that take readings every 15 minutes for 2 days. Ensure that you download the file to your local machine.

## **Goals**

The analysis goals are:

-   **Loading** \- load the input CSV file into Excel and convert into an Excel spreadsheet file.
-   **Cleaning** \- take the raw data and remove missing/incomplete values and convert the time currently in string form to an Excel datetime.
-   **Summary** \- calculate summary statistics for the data set including number of readings, maximum/minimum values, and readings for particular sensors.
-   **Transformation** \- transform the data set so that it is easier to analyze by creating a table where each row has a timestamp and readings in each column for every sensor at the site at that time.
-   **Visualization** \- create a chart that shows the sensor readings by time with trendlines.
-   **Analysis** \- will determine if there are any trends for the three sensors at site 1.

## **Marking and Evaluation (15 marks)**

This lab is to be done on an individual basis. Marks are awarded by **_precisely_** following these requirements:

-   **Loading (1 mark) -** Create an Excel file called **lab1\_(yourstudentnum).xlsx** (e.g. **lab1\_11111111.xlsx**) where the first sheet is called _rawdata_ and contains the loaded data set with no changes.
-   **Cleaning and Formatting (5 marks) -** create a second sheet called _data_ that contains the data set after all incorrect and out-of-range values have been removed.
    -   Any data that is not a number, is less than 0, or above 100 should be replaced by an **empty string ("")** (1 mark). Hint: May need to use [IF](https://support.office.com/en-us/article/IF-function-69aed7c9-4e8a-4755-a9bc-aa8bbff73be2) function.
    -   Header fields must be in bold font (0.5 marks).
    -   Timestamp field must be formatted as a date field in this format yyyy/mm/dd hh:mm:ss (2 marks). Hint: May need to use [DATEVALUE](https://support.office.com/en-us/article/DATEVALUE-function-df8b07d4-7761-4a93-bc33-b7471bbff252) function and function like [MID](https://support.office.com/en-us/article/MID-MIDB-functions-d5f9e25c-d7d6-472e-b568-4ecb12433028) to convert date. [More info](http://chandoo.org/wp/2010/03/23/text-to-date-convertion/). Note that both the DATE and TIME need to be converted and added together to get a DATETIME.
    -   Data must be sorted by siteid (ascending), sensorid (ascending), then timestamp (ascending) (0.5 marks).
    -   Add a column called global\_sensor\_id that is generated by siteid&"\_"&sensorid (1 mark).
-   **Summary (3 marks)** \- create a third sheet called _summary_ that contains the following items:
    -   Count of readings in B3, maximum reading value in B4, minimum reading value in B5, average reading in B6 (1 mark).
    -   Maximum reading by any sensor at site 2 in B8 (1 mark). Hint: Ctrl+Shift+Enter will be useful. See: [Array Output using Ctrl+Shift+Enter](http://superuser.com/questions/674566/when-to-use-ctrlshiftenter-and-when-to-use-enter-in-excel)
    -   Number of readings for sensor 2 at site 1 in B10 (1 mark). Note: Include **all** readings including readings that were out of range/errors/blank.
-   **Transformation (3 marks) -** create a fourth sheet called _transform_ that contains a table where each row is a time and each column contains values for the sensor.
    -   Creating data table (1 mark).
    -   Replacing missing values with NA() (0.5 marks). [More info](http://www.criticaltosuccess.com/when-data-points-are-bad-or-missing-how-do-you-create-a-usable-and-decent-looking-excel-chart/) and [Using ISNA() function](http://www.extendoffice.com/documents/excel/2487-excel-conditional-formatting-if-na.html#a1)
    -   Adding sparklines in last column for each row (0.5 marks).
    -   Add conditional formatting so that cells with #N/A are filled in red and cells with values >= 90 are filled in green (1 mark).
-   **Visualization (2 marks) -** create a **XY Scatter chart (with smooth lines and markers)** on a sheet called _chart_ that shows the readings by time for all three sensors at site 1. Add an appropriate trendline for sensor 1 at site 1. Also, using all the data from site 3, make a histogram to show the overall distribution of the data(you can use bin size of 10) and use a box plot to show the distribution of data from site 2 for each sensor separately.
-   **Analysis (1 marks) -** in the _summary_ sheet put in cell B12 if sensor 1 at site 2 has any data trend (none, exponential, linear, etc.).

**Note: The screenshots are provided as an approximate reference.**

When complete, commit you changes to the remote repository (push all changes) and copy the link to your repository and submit it in the canvas assignment section.

## Screenshots

**Please note that the data set that is used in the example is different that what you are using meaning that the numerical values will be different that what you calculate.**

### rawdata sheet

![lab1_rawdata.png](../images/lab1_rawdata.png?canvas_download=1)

### data sheet

![lab1_data.png](../images/lab1_data.png?canvas_download=1)

### summary sheet

![lab1_summary.png](../images/lab1_summary.png?canvas_download=1)

### transform tab

![lab1_transform.png](../images/lab1_transform.png?canvas_download=1)

### chart sheet

![lab1_chart.png](../images/lab1_chart.png?canvas_download=1)

![Histogram-boxplot.png](../images/Histogram-boxplot.png?canvas_download=1)