# Milestone 3 - Exploratory Data Analysis (EDA)

In this milestone you will be expected to process and clean your dataset, do exploratory data analysis (EDA).
If you are working as a group, you will be expected to show proficiency in all the areas above, **without a duplication of efforts**.
In other words, every member of the group should do their own exploratory data analysis and should be reasonably different and the submitted work should be different from your teammates' work.

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

**Note: The EDA task (Task 1) is different from the Analysis task (Milestone 4). The EDA is "exploratory" in nature, and is done at a superficial level to get counts of columns, limits, ranges, understand the data distribution, and a cursory look at the relationships between the columns. Think of it as a 'quick and dirty' analysis of your data in preparation for a more thorough analysis.**

- As a rough guideline, **each** EDA should:

  - Involve at least two columns/features of your dataset
  - At least three **useful** visualizations created by you (the more the merrier (within reason)!)
  - Some notes and commentary to help others see observations you find interesting.

Remember that the goal of the EDA is to understand and explore your datasets.
Here are three examples or guides:

  - [Guide 1](https://towardsdatascience.com/an-extensive-guide-to-exploratory-data-analysis-ddd99a03199e)
  - [Guide 2](https://towardsdatascience.com/exploratory-data-analysis-eda-a-practical-guide-and-template-for-structured-data-abfbf3ee3bd9)
  - [Guide 3](https://aiden-dataminer.medium.com/the-data-science-method-dsm-exploratory-data-analysis-bc84d4d8d3f9)
  - Lab 4 and 5 had some elements of a rudimentary EDA (but we expect much more from you now!)

## Task 2: Refine your research questions

Once you have gone through a couple of rounds of EDA, you are ready to properly and fully formulate your research questions.

- You may have found that through your EDA you already answered your questions because they were more trivial than you thought, in this case you should come up with additional questions along the same track to demonstrate your proficiency with python, pandas, and seaborn (depending on your contracted grade).

- On the other hand, you may have found through your EDA that your research questions are impossible to address with your dataset due to limitations with the data, or for other logistical reasons (initially misinterpreting your dataset).
In this case, you should pivot and hopefully your EDA showed you another potential path forward with a new research question or angle
    - This is fine and to be expected when trying to come up with research questions on a dataset you haven't worked with before!

- For this task, you should clearly identify what your research questions are in your respective `analysisX.ipynb` files.
    - Note, EACH person in the group member should have their own research question(s) to guide their analysis in their own Jupyter notebook.

- You should **bold** your research question so it's easy to identify, it should be at most, one or two sentences

- Now that you have a better idea of what your research questions will be, you should come up with a revised analysis plan. The analysis plan should include details such as how you plan to further clean or process your data, additional columns you may need to add, different ways to reshape or pivot your data, different ways to aggregate your data, etc... to answer your research questions.
    - As part of this Milestone, you **do not have to implement your analysis plan**, but you should summarize it in a few steps.

## Submission

1. You should submit your repository snapshot on Prairielearn. Once you submit it, you may continue to work on the next milestone in the group repository, we will grade the commit closest to your submission time.

1. Each team member will also submit a teamwork reflection in their weekly learning logs (also on Prairielearn).
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

<!-- <img src="https://guides.github.com/features/issues/navigation-highlight.png" width="600px"> -->

> **Labels** are a great way to organize different types of issues. Issues can have as many labels as you want, and you can filter by one or many labels at once.

<!-- <img src="https://guides.github.com/features/issues/labels-listing.png" width="600px"> -->

> **Milestones**, are groups of issues that correspond to a project, feature, or time period. People use them in many different ways in software development.

<!-- <img src="https://guides.github.com/features/issues/milestones.png" width="600px"> -->

> Assignees are a great way to filter, categorize issues, and remember what you're responsible to do. Each issue can have an assignee — one person that’s responsible for moving the issue forward. Assignees are selected the same way milestones are, through the grey bar at the top of the issue. 

<!-- <img src="https://guides.github.com/features/issues/example-issue.png" width="600px"> -->

You can change or add a milestone, an assignee, and labels by clicking their corresponding gears in the sidebar on the right.

#### How to pull the most recent changes to your computer

If you edit your code on the GitHub web interface, or if another use commits to your repository, to update the repository with the most recent changes, you should **always start a working session by running this command** in your git repository (using either Terminal or GitBash): 

> `git pull`

This will make sure your local computer is updated with any changes.
If you expect that some of the same files have been edited (or if your `git pull` fails), you can try:

```
git pull --no-ff
```

Commit and push your changes often while you work to stay in sync.