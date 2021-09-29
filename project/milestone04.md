# Milestone 4 - Present your Dashboard!

In this milestone you will be finalizing your submission and presenting all your hard-work to your fellow students as a Dashboard!

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

## Task 1: Process your data for your Tableau Dashboard

You should prepare and process your data so that when you create your dashboard, you have to do minimal data wrangling or manipulation in Tableau.
There are many different ways to deal with this, but I suggest you export a dataset that you can easily use in Tableau to plot whatever you need to in your dashboard.

You should put the exported .csv files in the `data/processed` directory.

## Task 2: Create a Dashboard using Tableau

Create a dashboard (using your `processed` dataset - i.e. you do not have to do the data cleaning, wrangling, processing again) to create a Dashboard using Tableau.
There are no requirements for this Dashboard, but please remember that you will be graded based on the quality of your dashboard, and how well it answers your research questions and/or helps with the exploratory data analysis.
I suggest you take this opportunity to explore as many of the features that make sense for your project, and get help from us when you need it!
You should place the Tableau file in the `dashboard` folder. 

**Each group should only make ONE Tableau Dashboard, but you can work on it separately and then combine it at the end for the final submission. I suggest using multiple "tabs" in Tableau to split up research questions or parts of the dashboard.**

## Task 3: Present your dashboard

For this Task, you will record an Explainer video (similar to the lab explainer videos) showing your Tableau Dashboard.

- Individual project presentations should be 3-4 minutes long.
- Groups of 2 project presentations should be 5-7 minutes long.
- Groups of 3 project presentations should be 7-10 minutes long.

Other requirements:

- All members of a group must participate in the Explainer Video (you may have multiple tabs in your Tableau Dashboard).
- Your recording does NOT have to have a high production value (editing, background sound, video titles etc..) and I would suggest not spending too much time on the non-dashboard component.

### Rubric for grading Project Dashboard Presentations

It is very important for you to know that we are NOT looking for hollywood production value here.
We want to see your Tableau dashboard, get a walk-through of the key features, and hopefully see some enthusiasm about your project.

Here is the rubric for how we will grade these 5 minute videos (or live presentations if you choose):

- [10%] : Timely submission of a video link or file by the deadline and before the grace period ends.
- [20%] : Clear explanation of the project research questions and information about the dataset.
- [50%] : Guided walk-through of the key features of the Tableau Dashboard.
- [30%] : Show how your dashboard data answer your research questions.

## Submitting Milestone 4

You will submit Milestone 4 on Gradescope.

## Working collaboratively in GitHub

As we progress through the course, you will be learning more and more about GitHub and how to work collaboratively on code.
Since this is the first time many of you are using Git, I recommend that if you are working in a group, you avoid editing each others' files until you are more familiar with git.
Below are a few things you may find useful as you continue your git journey.

### Git Branches

Git branches were introduced in Milestone 2.

### Pull requests

Once you have created a branch and "completed" a feature, it's time to merge the feature back to the `main` (or `master`) branch.
Of course, as you learned in the tutorial you can do this yourself, but in general it's a good idea for another teammate to review your work before it is merged into master. 
This is where Pull Requests come in:

<img src ="https://guides.github.com/activities/hello-world/pr-tab.gif" width="600px">

To create pull requests (even students working solo can do this), [you can follow Steps 4 and 5 from here](https://guides.github.com/activities/hello-world/#pr), and then assign a reviewer (from your group) to look at your code.

### Git Issues, Milestones, Labels, and Assignees

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

### How to pull the most recent changes to your computer

If you edit your code on the GitHub web interface, or if another user commits to your repository, to update the repository with the most recent changes, you should **always start a working session by running this command** in your git repository (using either Terminal or GitBash): 

> `git pull`

This will make sure your local computer is updated with any changes.
Commit and push your changes often while you work to stay in sync.