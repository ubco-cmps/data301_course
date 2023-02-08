# Milestone 2 - Load your dataset, explain it, and define your research questions

In this milestone you will be expected to explain your dataset (source, columns, general explanation of your dataset) and come up with research questions.

## Overall Expectations

- On average, all team members should be contributing to the project equally!
- Each team member is responsible for their own research question(s), but the data processing, wrangling, and cleaning steps can be shared. (later in the project milestones)
- Your question, analysis and visualizations should make sense, be well-formed, and it does not have to be complicated. (later in the project milestones)
- You should use proper grammar and full sentences. Point form may occur, but should be less than 30% of your written documents.
- You must use proper English, spelling, and grammar and you should write concisely.
- There should be a plan in place to to deal with any teamwork conflicts and issues.
- Every time you resume working on a project, you should run `git pull` to pull down any changes that may have occurred since the last time you worked on the project.
- You should be committing to git every time you work on this project, and 
- On average, all team members should be contributing to the project equally!
- Commit messages should be meaningful. We will look at them. It's OK if one or two are less meaningful, but most should provide a short phrase to remind yourself (and others looking at your repository) what the changes were.
- Use GitHub issues to communicate and document major decisions 
- Your question, analysis and visualizations should make sense, be well-formed, and it does not have to be complicated.


## Task 1: Introduce and describe your dataset and topic

Once your dataset is approved, you will need to refine your description of it, as well as the topic(s) or research questions you are interested in.
Over the course of the project, you may update this as needed.

**IMPORTANT:** The answers to these questions should be placed in the project's **main** README.md file (located in the main repository).

1. Describe your dataset in about 150-200 words

Consider the following questions to guide you in your exploration:

- Who: Which company/agency/organization provided this data?
- What: What is in your data?
- When: When was your data collected (for example, for which years)?
- Why: What is the purpose of your dataset? Is it for transparency/accountability, public interest, fun, learning, etc...
- How: How was your data collected? Was it a human collecting the data? Historical records digitized? Server logs?

*Additional Guidance: Your audience is fellow data scientists. You probably will not need more than 150 words to describe your dataset. All the questions above do not need to be answered, it's more to guide your exploration and think a little bit about the context of your data. It is also possible you will not know the answers to some of the questions above, that is FINE - data scientists are often faced with the challenge of analyzing data from unknown sources. Do your best, acknowledge the limitations of your data as well as your understanding of it. Also, make it clear what you're speculating about. For example, "I speculate that the {...column_name...} column must be related to {....} because {....}."*

2. Describe your topic/interest in this dataset - answer in about 150-200 words

Some questions you may wish to consider:

- What do you hope to do with your analytics project? 
- Why are you interested in this topic or dataset?
- Do you have any questions you specifically want to explore?
- Could you imagine building a user-facing [Dashboard](https://www.datapine.com/blog/data-dashboards-definition-examples-templates/) with this dataset? 
  - Note: In the final weeks of the course you will be building a Dashboard with your data so choose wisely!

### Task 2: Load your dataset from a file or URL

- For this task, you should use the `analysis1.ipynb`, `analysis2.ipynb`, and `analysis2.ipynb` notebooks to load your data into a dataframe using Pandas.
- Each person in the team **must** include their code in their respective Jupyter Notebook (`.ipynb` file) demonstrating proficiency with the things we ask you to do in each milestone.
- Remember that others will be running your analysis notebook so it's important that the data is accessible to them, **you must use relative paths and NOT absolute paths!**
- If your dataset isn't accessible as a URL, make sure to commit it directly into your repo.
- If your dataset is only accessible as a URL, add it to this README: `data/README.md`
  - You should name your files as follows to keep things organized: `notebooks/analysis1.ipynb` etc...
  - If your Jupyter notebook gets very long, you may consider breaking it up. Just make sure you keep a simple naming convention like `analysis1a.ipynb`, etc...

## Task 3: Define and refine your research questions

- For this task, you should clearly identify what your research questions are in your respective `analysisX.ipynb` files.
    - Note, EACH person in the group member should have their own research question(s) to guide their analysis in their own Jupyter notebook.
- You should **bold** your research question so it's easy to identify, it should be at most, one or two sentences
- In addition to your research question, you should also add a few sentences of additional context to explain how you plan to answer your research question with your dataset, and a rough analysis plan (you do not have to stick to this plan for the whole project, but the TAs will be giving you feedback on your analysis plan). 
    - Your analysis plan can include any details you think might be useful or relevant, such as how you plan to clean or process your data, additional columns you may need to add, different ways to reshape or pivot your data, different ways to aggregate your data, etc...
    - You do not necessarily need to think too much about what types of visualizations you will have, but if you want, you can start thinking about those too.

## Feedback from previous years

Here are some of the things that you should watch out for, as observed from previous submissions in previous years:

- Make sure you follow the project organization and that you are not adding extra notebooks in your repository (only notebooks named `analysis1.ipynb`, `analysis2.ipynb`, `analysis3.ipynb` will be considered - you can rename them with your own name, like `analysis_hira.ipynb` if you like).
- Make sure you add your refined research questions in the same notebook as you load your data! 
    - We will be looking at these a lot more closely for Milestone 2.
- Remember that this is a group project so you should make sure all group members follow the instructions carefully.
- All paths used must be relative!
- Your analysis should not be empty! All code should be in your analysis files, in the correct location.
- Answering your research questions within your analysis files so the TAs can look at your data and research questions together! You should NOT have them in a separate file or a separate notebook.
- Make sure your repository is tidy and organized ; extra and unnecessary files in your repository should either be deleted or moved into the "ungraded" directory. You can put anything you don't want us to look at in the "ungraded" folder. 
- You should make sure your data is placed in the correct folder - raw data should go into `raw` (follow the suggested project organization)
- There should be no errors in your code (bugs, dataset not loading, etc.)!
- You should put code in code cells, and Markdown in Markdown cells
- Do NOT use an unapproved dataset! You should come see the instructor or the Project TAs to make sure your dataset is approved before submitting Milestone 2!

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