# Task 1 -  Load in the `street_trees` Data.

### 1.1. Load the data

We have provided you with [data](https://github.com/firasm/bits/blob/master/street_trees.csv) obtained from [The City of Vancouver's Open Data Portal](https://opendata.vancouver.ca/explore/dataset/street-trees/information/?disjunctive.species_name&disjunctive.common_name&disjunctive.height_range_id)
with minimal data wrangling done by the R package [DatateachR](https://github.com/UBC-MDS/datateachr).

#### Instructions
1. On the left-hand side in the blue bar, you'll see a "Connect" heading. This is where you can connect Tableau to your data.      
1. Since we are using a `.csv` file we are going to click on "**More...**" under the "**To a File**" subheading.           
 _💡You can connect to many different things such as Microsoft SQL, PostgresSQL, Google Sheets, MongoDB BI Connector, etc. This is all accessible in "**More...**" under the sub-heading "**To a Server**"._
1. Locate the data and click "**Open**". This should connect your data and you should see a table. (You may need to click the "**Update Now**" button at the bottom)
1. You can choose to rename your data source by clicking the title at the top.
1. To start creating plots you can click "**Sheet 1**" at the bottom left of the window. 


### 1.2. Set the data types for the columns 

Tableau automatically assigns variable types to your columns, however, sometimes it doesn't guess correctly.

#### Instructions 

1. We need to change the last 3 columns in our data `date_planted`, `latitude` and `longitude`. 
1. Scroll to the right and click on the icon (ABC) to the left of `date_planted` and convert it to **Date**. 
1. Next, convert `longitude` and `Latitude` to a **Number (decimal)** and the under the **Geographic Role** we can assign it to  **Longitude** and **Latitude** respectively.     
    - _💡If we do not convert these columns to decimals first, Tableau will give you the **Latitude** and **Longitude** options under **Geographic Role**_ 

