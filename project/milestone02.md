# Milestone 2 - Create repository and Load Dataset

In this milestone you will be expected to setup the repository, clone it to your local machine and load your approved dataset.

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

## Task 1: Accept the repository

The first step is to create/join a GitHub repository:
- Discuss with your partner(s) to determine which of you will accept the initial repository link (only one person in a group should accept the link).
- If you are the first person in the group, click this link to accept the [Template Project GitHub Classroom](https://firas.moosvi.com/courses/2021_WT1/data301/notes/labs.html).
- Make sure you set the name of your repository to be exactly this: `groupXX-project` and then let your team member(s) know the name of your group.
- Other team member(s) should search for their group name and join it.

## Task 2: Repository Setup - Introduce and describe your dataset and topic

Once your dataset is approved, you will need to refine your description of it, as well as the topic(s) or research questions you are interested in.
Over the course of the project, you may update this as needed.

**IMPORTANT: ** The answers to these questions should be placed in the project's **main** README.md file (located in the main repository).

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

## Task 3: Project Organization

Once you update your README file, the next step is to understand what each of the folders in your repository are for.

- Once you accept the project template, I have created all the directories below, but you should know what they are. Here is description of the file and folder structure of this project: 
  - `data` - your data files should be split up into "raw" and "processed":
    - `data/raw` - raw data should go in this directory; you should add the original source file here. Always keep the original data file without editing.
    - `data/processed` - You can add cleaned up, and processed data files in this directory.
  - `images` - any external images you use should be in this directory so things are organized.
  - `notebooks` - all Jupyter Notebook files should be kept in this parent directory. Keep this folder organized and have as few notebooks in here as possible.
    - `notebooks/analysis1.ipynb` : Teammate 1 should have Jupyter Notebook work stored here. Remember to change the header in this file to your names or an alias. Don't change the name of this file.
    - `notebooks/analysis2.ipynb` : Teammate 2 should have Jupyter Notebook work stored here. Remember to change the header in this file to your names or an alias. Don't change the name of this file.
    - `notebooks/analysis3.ipynb` : Teammate 3 should have Jupyter Notebook work stored here. Remember to change the header in this file to your names or an alias. Don't change the name of this file.
    - `notebooks/ungraded/` : Anything you don't want to be marked or looked at can be placed in this folder.   
    - You may add additional subdirectories within the current structure, but try to avoid creating any directories in the project root. If you have questions about this, you can ask the project TA.
  - `dashboard` - this folder won't be used until Milestone 04 where you will be working with tableau to turn your dataset into a dashboard.
- In your GitHub repository, you should have the following files:
  - README files describing what is happening (or going to happen) in each directory:
    - `data/README.md` : One sentence explaining what will be in this directory
    - `data/raw/README.md`: One sentence explaining what will be in this directory
    - `data/processed/README.md`: One sentence explaining what will be in this directory
    - `images/README.md`: One sentence explaining what will be in this directory
    - `notebooks/README.md`: One sentence explaining what will be in this directory
    - `README.md`: This file should contain all the important information someone needs to know about your project
  - `CODE_OF_CONDUCT.md`: This file allows you to set standards for how people should interact with your repository, and signals to others that this is a welcoming and inclusive project; it should also outline procedures for handling abuse.
    - [Follow the steps here to use a Code of Conduct template](https://docs.github.com/en/free-pro-team@latest/github/building-a-strong-community/adding-a-code-of-conduct-to-your-project)
    - `LICENSE`: Your repository currently has a default license called the [MIT license](https://choosealicense.com/licenses/mit/). I suggest choosing the **MIT** license unless you have a strong preference otherwise.

```{warning}
 **Note: GitHub currently does not allow you to upload empty directories, so each directory has a README file that you should populate with relevant information**
```

## Task 4: Load your dataset from a file or URL

- For this task, you should create a Jupyter notebook and load your data into a dataframe using Pandas.
- If you are working in a group, each person in the team **must** include a separate Jupyter Notebook (`.ipynb` file) demonstrating proficiency with the things we ask you to do for each milestone.
- Remember that others will be running your analysis notebook so it's important that the data is accessible to them. 
- If your dataset isn't accessible as a URL, make sure to commit it directly into your repo.
- If your dataset is only accessible as a URL, add it to this README: `data/README.md`
  - You should name your files as follows to keep things organized: `notebooks/analysis1.ipynb`
  - If your jyputer notebook gets very long you may consider breaking it up. Just make sure you keep a simple naming convention like `analysis1a.ipynb`.

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

#### How to pull the most recent changes to your computer

If you edit your code on the GitHub web interface, or if another use commits to your repository, to update the repository with the most recent changes, you should **always start a working session by running this command** in your git repository (using either Terminal or GitBash): 

> `git pull`

This will make sure your local computer is updated with any changes.
Commit and push your changes often while you work to stay in sync.