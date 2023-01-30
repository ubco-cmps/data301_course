# DATA 301 Project

## Introduction

One of the best parts of Data Science is that after learning just a little bit of background language, your world will open up drastically and you now have the power to explore whole datasets!
It's a whole new world...

<iframe src="https://giphy.com/embed/11thnyggFkrmmc" width="480" height="270" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/moments-part-11thnyggFkrmmc">via GIPHY</a></p>

You can find a dataset about something that you're passionate about like climate change, music, financial information, vacation rentals, flight prices, stock prices, population data, vaccine efficacy, etc...
Then practice using the techniques from this course on this dataset, and start exploring interesting questions, as well as more advanced data science techniques.
Research shows that intrinsic motivation (defined below) have significant effects in students being more genuinely engaged in the learning activities, more dedicated to the task achieving deeper learning, and more persistent in the face of learning challenges {cite}`Vansteenkiste2004`.

```{tip}
Definition: "Intrinsic motivation refers to people’s spontaneous tendencies to be curious and interested, to seek out challenges and to exercise and develop their skills and knowledge, even in the absence of operationally separable rewards".{cite}`Domenico2017`.
```

## Logistics

We will do an activity in class to help you formulate your groups.

### Group Size

The optimal group size for this project is a group of 3.
I encourage you to work in a group, and I expect that you will learn a lot more working collaboratively, including how to use `Git` and `GitHub` in a team setting.
This will be an excellent skill to put on your CV, and it will also be much closer to what happens in real life.
In **very rare cases**, individual groups will be permitted, by request only and by arrangement with the instructor.

## Contracts for the Project (Draft)

Since this is the first time I'm trying "Contract Grading", the details below are a work-in-progress, and will be finalized over the term.
I will commit that to ensuring that the levels will stay fairly constant, but I'll continue to add clarifications as needed.

### Contract for a `C` project (63%)

- Data loading
    - Use relative paths to load datasets
- Simple research questions
    - Questions that can be answered with one or two plots
- Simple data cleaning, wrangling, processing
    - Dealing with missing values
    - Update column names
    - Fixing inconsistent capitalization issues in the dataset
    - Removing unnecessary columns
    - Create new "aggregate" columns (for e.g. weighted score)
    - etc...
- Simple data visualization
    - Axis titles (all plots must have titles)
    - Axis labels (all plots must have labels)
    - Ensure all titles and labels are appropriate (with units) and not the default column names
    - Larger font size to ensure all labels and titles are legible
    - Flip x and y-axes, for example, plotting categorical data is on the y-axis (so it's easier to read)
    - Example of "simple" data visualizations:
        - Bar charts
        - Box plots
        - Scatter plots
        - etc...
- Effectively communicating data through visualizations
    - Captions describing each plot
    - At least one key insight from the plot
- Simple Tableau Dashboard
    - Details coming...
- Visit instructor or Project TA student hours at least once for feedback (and implement it)

### Contract for a `B` project (75%)

To contract for a `B` project, you should do everything above plus:

- Complex data visualizations (compound plots, complex plots)
    - Usage of subplots or small multiples (aka facet plots)
    - Examples of "complex" data visualizations
        - Examples coming soon...
- Complex data cleaning/wrangling/processing   
    - Generation of additional dataframes that are summaries or aggregated from the original dataset
    - Use of Pivot Tables and/or Groupby objects
- Complex research questions
    - Questions that need several plots to answer, or generate additional sub-questions that can be answered with more plots or more data wrangling.
- Complex Tableau Dashboard
    - Examples coming soon...
- Equitable labour distribution
    - All students in the group should be putting in roughly the same amount of work on the project
- Visit instructor or Project TA student hours at least twice for feedback (and implement it)

### Contract for an `A` project (88%)

To contract for an `A` project, you should do everything above plus:

- Use of functions in wrangling, processing, cleaning
- Simple method chaining
    - At least four basic operations (for e.g rename, reorder, or drop columns, replace values within the dataframe)
    - At least two method chains
- Deep analysis and insightful commentary
- Effective use of GitHub issues
- Sophisticated Tableau Dashboard
- Visit instructor or Project TA student hours at least 3 times for feedback (and implement it)

### Contract for an `A+` project (100%)

To contract for an `A+` project, you should do everything above plus:

- Complex method chaining
    - At least three advanced operations (for e.g anonymous or lambda functions in `assign` or `apply` functions)
    - At least two method chains
- Effective use of Git branches, code reviews, Pull Requests (and approvers)
- Extra “flair” and effort
- Visit Project student hours 4 or more times for feedback (and implement it)