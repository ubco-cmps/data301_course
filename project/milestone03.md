# Milestone 3 - Data Analysis

In this milestone you will be expected to process and clean your dataset, do exploratory data analysis (EDA), create some data visualizations, and work with method chaining in Pandas. 
If you are working as a group, you will be expected to show proficiency in all the areas above, **without a duplication of efforts**.

## Overall Expectations

- Every time you resume working on a project, you should run `git pull` to pull down any changes that may have occurred since the last time you worked on the project.
- You should be committing to git every time you work on this project, and 
- On average, all team members should be contributing to the project equally!
- Each team member is responsible for their own research question(s), but the data processing, wrangling, and cleaning steps can be shared.
- Commit messages should be meaningful. We will look at them. It's OK if one or two are less meaningful, but most should provide a short phrase to remind yourself (and others looking at your repository) what the changes were.
- Use GitHub issues to communicate and document major decisions 
- Your question, analysis and visualizations should make sense, be well-formed, and it does not have to be complicated.
- You should use proper grammar and full sentences in your READMEs. Point form may occur, but should be less than 30% of your written documents.
- You must use proper English, spelling, and grammar and you should write concisely.
- There should be a plan in place to to deal with any teamwork conflicts and issues.

## Task 1: Conduct an Exploratory Data Analysis (EDA) on your dataset

If you are working in groups, each person should do their EDA separately and independently. 
You have chosen rich datasets and there should be plenty of different features for each of you to explore.

**Note: The EDA task (Task 1) is different from the Analysis task (Task 4). The EDA is "exploratory" in nature, and is done at a superficial level to get counts of columns, limits, ranges, understand the data distribution, and a cursory look at the relationships between the columns. Think of it as a 'quick and dirty' analysis of your data in preparation for a more thorough analysis.**

- As a rough guideline, **each** EDA should:

  - Involve at least two columns/features of your dataset
  - At least three **useful** visualizations created by you (the more the merrier (within reason)!)
  - Some notes and commentary to help others see observations you find interesting.

Remember that the goal of the EDA is to understand and explore your datasets.
Here are three examples or guides:

  - [Guide 1](https://towardsdatascience.com/an-extensive-guide-to-exploratory-data-analysis-ddd99a03199e)
  - [Guide 2](https://towardsdatascience.com/exploratory-data-analysis-eda-a-practical-guide-and-template-for-structured-data-abfbf3ee3bd9)
  - [Guide 3](https://aiden-dataminer.medium.com/the-data-science-method-dsm-exploratory-data-analysis-bc84d4d8d3f9)
  - Lab 4 had some elements of a rudimentary EDA (but we expect much more from you now!)


## Task 2. Set up an "Analysis Pipeline" 

**Each person in a group should do this Task in their own Jupyter notebook!**

Often when Data Scientists do analyses with the same or similar datasets, they set up an "analysis pipeline".
This has several advantages:

- record the steps so you can remember what you did.
- allows you to repeat the steps reproducibly, without doing a bunch of manual and repetitive work.
- make changes to thes series of processing steps so you can improve and iterate.
- troubleshoot and debug errors in your processing.
- allows others to reproduce your analysis.
- if your data changes, you can update your outputs (report, images, etc...) easily without redoing all your processing.
- allows you to spend more effort and energy on your analysis and visualizations (if you do a good job with the pipeline).

### Common steps of a Data Analysis Pipeline

Here are some common steps of an analysis pipeline (the order isn't set, and not all elements are necessary):

1. Load Data
    - Check file types and encodings.
    - Check delimiters (space, comma, tab).
    - Skip rows and columns as needed.
2. Clean Data
    - Remove columns not being used.
    - Deal with "incorrect" data.
    - Deal with missing data.
3. Process Data
    - Create any new columns needed that are combinations or aggregates of other columns (examples include weighted averages, categorizations, groups, etc...).
    - Find and replace operations (examples inlcude replacing the string 'Strongly Agree' with the number 5).
    - Other substitutions as needed.
    - Deal with outliers.
4. Wrangle Data
    - Restructure data format (columns and rows).
    - Merge other data sources into your dataset.
5. Exploratory Data Analysis (not required for this Task).
6. Data Analysis (not required for this Task).
7. Export reports/data analyses and visualizations (not required for this Task).

For this Task, I will only ask you to set up a partial pipeline for the data loading, cleaning, processing, and wrangling steps.

## Task 3. Method Chaining and writing Python programs 

By now you probably have done several steps to load, clean, process, wrangle your data, and then save it to disk, in a notebook. 
You will now use "method chaining" to re-do those steps in fewer lines, and more compact code in new (cells) within your Jupyter Notebook.
Once you are confident that your method chain works as expected, you will then move it to a separate `.py` file and then run the file from within your notebook.
An example of this will be shown in Lab 5.
Here are the steps you need to take:

### Step 1: Build and test your method chain(s)

Method chaining allows you to apply multiple processing steps to your dataframe in a fewer lines of code so it is more readable.
You should avoid having too many methods in your chain, as the more you have in a single chain, the harder it is to debug or troubleshoot.
I would target about 5 methods in a chain, though this is a flexible suggestion and you should do what makes your analysis the most readable and group your chains based on their purpose (e.g., loading/cleaning, processing, etc...).

This [article](https://pandasninja.com/2019/04/how-to-write-neat-pandas-code/) has a nice tutorial on method chaining.

Here is an example of method chaining (description below the code) adapted from [here](https://towardsdatascience.com/the-unreasonable-effectiveness-of-method-chaining-in-pandas-15c2109e3c69):

```
import pandas as pd
import numpy as np
from sklearn.datasets import load_wine

data = load_wine() # this a data file that gets loaded

# Method chaining begins

df = (   
    pd.DataFrame(data.data,columns=data.feature_names)
    .rename(columns={"color_intensity": "ci"})
    .assign(color_filter=lambda x: np.where((x.hue > 1) & (x.ci > 7), 1, 0))
    .loc[lambda x: x['alcohol']>14]
    .sort_values("alcohol", ascending=False)
    .reset_index(drop=True)
    .loc[:, ["alcohol", "ci", "hue"]]
)

df
```

> The code above starts with loading the data, then renaming color intensity for its shorter form ci. 
> It then creates a new column 'color filter' based on values on hue and ci, using the `assign` function. 
> It then filters a wine that has an alcohol content of more than 14. 
> In the end, it sorts the data frame based on alcohol content and displays the columns that we are interested in. 
> If the same were to be repeated without Method Chaining, a new data frame must be created and stored at each step.

### Step 2: Wrap your method chain(s) in a function

A method chain converted to a function would like something like:

```
def load_and_process(url_or_path_to_csv_file):

    # Method Chain 1 (Load data and deal with missing data)

    df1 = (
          pd.read_csv(url_or_path_to_csv_file)
          .rename(...)
          .dropna(...)
          # etc...
      )

    # Method Chain 2 (Create new columns, drop others, and do processing)

    df2 = (
          df1
          .assign(...)
      )

    # Make sure to return the latest dataframe

    return df2 

```

Within your Jupyter Notebook, test your function to make sure it returns the output you expect.

### Step 3: Move your function into a new .py file

- Inside your `notebooks` directory each person in the group will create a `project_functions.py` file.
- Create a new file `project_functions1.py`, `project_functions2.py`, `project_functions3.py` (one for each student) and add the module imports you may need (`pandas`, `numpy`, etc...).
- Copy the `load_and_process` function into your `project_functions.py` file.
- Save the file.
- Add and commit it to your repository.
- Push it up to GitHub so that your teammates can also see this file.
- Each member of a group should now `import` the `project_functions` file in their `analysis.ipynb` file, and use the `load_and_process` function
- A Jupyter Notebook cell should look something like:

```
from .. import project_functions # This is called a relative import
df = project_functions.load_and_process(url_or_path_to_csv_file)
df
```
Congratulations! You have now written your first python module!
The advantage of this is that you can now more easily use the power of git to version your method chains.
You are welcome to add more custom utility functions to the `project_functions` file, especially those that your teammates will use. 
This will reduce the need for you and others to repeat yourself, and allow you to build up your functions over time.

#### Additional Reading on Relative imports AKA "what did I just do?"

- [This article](https://realpython.com/absolute-vs-relative-python-imports/#relative-imports) is a very comprehensive guide to importing files and functions in python. Much of this is beyond the scope of DATA 301, but for those interested and curious, that is a very useful resource.


## Task 4. Conduct your analysis to help answer your research question(s)

Armed with your EDA, you should now be ready to conduct a thorough analysis to answer your research question(s).
This section can be completed together as a group (and only one file should be submitted) but you may (and are encouraged) to try this yourself first, and then combine them together in one submission.

Each group will have a different data analysis product, however some guidelines to keep you on the right track:

- You should remain focused on your research question(s) - it is very easy to get lost down rabbit holes in data analyses projects.
- If you find that your research questions are not that interesting, or you find more interesting questions (especially after your EDA) you may revise them, or add more. 
- Use the lab times, as well as our office hours (TAs and instructors), to get help and guidance on your analyses.
- You should experiment with "plenty of" data visualizations to try and visualize your dataset and answer your research questions.
- Give us a narrative/story of your explorations as you go along, in-line with your data - use the new Markdown skills you learned!

## Submission

1. **One person in the group** should submit your repository snapshot on Gradescope. Once you submit it, you may continue to work on the next milestone. Remember to add your group members' names or they will get 0!

1. Each team member will also submit a teamwork reflection in their weekly learning logs (also on Gradescope).
> The purpose of this individual report is to give you an avenue to present your viewpoint as to how the project went, how the group worked together, and your role in the group.
> Each group member must complete this form to report on the contributions of **yourself** and the other group members.
> That information can, if needed, be used to adjust final grades of individuals. 
> This is a report private between you and the instructors, meaning that none of your classmates will see this report.

## Appendix

### Working collaboratively in GitHub

As we progress through the course, you will be learning more and more about GitHub and how to work collaboratively on code.
Since this is the first time many of you are using Git, I recommend that if you are working in a group, you avoid editing each others' files until you are more familiar with git.
Below are a few things you may find useful as you continue your git journey.

#### Git Branches

Git branches were introduced in Milestone 2.

#### Pull requests

Once you have created a branch and "completed" a feature, it's time to merge the feature back to the `main` (or `master`) branch.
Of course, as you learned in the tutorial you can do this yourself, but in general it's a good idea for another teammate to review your work before it is merged into master. 
This is where Pull Requests come in:

<img src ="https://guides.github.com/activities/hello-world/pr-tab.gif" width="600px">

To create pull requests (even students working solo can do this), [you can follow Steps 4 and 5 from here](https://guides.github.com/activities/hello-world/#pr), and then assign a reviewer (from your group) to look at your code.

#### Git Issues, Milestones, Labels, and Assignees

From GitHub's documentation:

> **Issues** are a great way to keep track of tasks, enhancements, and bugs for your projects. They’re kind of like email—except they can be shared and discussed with the rest of your team. Most software projects have a bug tracker of some kind. GitHub’s tracker is called Issues, and has its own section in every repository.

<img src="https://guides.github.com/features/issues/navigation-highlight.png" width="600px">

> **Labels** are a great way to organize different types of issues. Issues can have as many labels as you want, and you can filter by one or many labels at once.

<img src="https://guides.github.com/features/issues/labels-listing.png" width="600px">

> **Milestones**, are groups of issues that correspond to a project, feature, or time period. People use them in many different ways in software development.

<img src="https://guides.github.com/features/issues/milestones.png" width="600px">

> Assignees are a great way to filter, categorize issues, and remember what you're responsible to do. Each issue can have an assignee — one person that’s responsible for moving the issue forward. Assignees are selected the same way milestones are, through the grey bar at the top of the issue. 

<img src="https://guides.github.com/features/issues/example-issue.png" width="600px">

You can change or add a milestone, an assignee, and labels by clicking their corresponding gears in the sidebar on the right.

#### How to pull the most recent changes to your computer

If you edit your code on the GitHub web interface, or if another user commits to your repository, to update the repository with the most recent changes, you should **always start a working session by running this command** in your git repository (using either Terminal or GitBash): 

> `git pull`

This will make sure your local computer is updated with any changes.
Commit and push your changes often while you work to stay in sync.
