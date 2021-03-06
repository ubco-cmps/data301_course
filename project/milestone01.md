# Milestone 1 - Find Dataset

<head>
  <base target="_blank">
</head>

In this milestone you will be expected to choose a dataset appropriate for the DATA 301 project.
The most important task for this milestone is to select an appropriate dataset and load your data.

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

## Task 1: Project Setup (30%)

- The first step is to create/join a GitHub repository. 
    - Discuss with your partner(s) to determine which of you will accept the initial repository link (only one person in a group should accept the link).
    - If you are the first person in the group, click this link to accept the [Template Project GitHub Classroom](https://classroom.github.com/g/kAD2P_UM).
    - Make sure you set the name of your repository to be exactly this: `groupXX-project` and then let your team member(s) know the name of your group.
    - Other team member(s) should search for their group name and join it.

- Once you accept the project template, I have created all the directories below, but you should know what they are. Here is description of the file and folder structure of this project: 
  - `data` - your data files should be split up into "raw" and "processed":
    - `data/raw` - raw data should go in this directory; you should add the original source file here. Always keep the original data file without editing.
    - `data/processed` - You can add cleaned up, and processed data files in this directory.
  - `images` - any external images you use should be in this directory so things are organized.
  - `analysis` - all Jupyter Notebook files should be kept in this parent directory.
    - `analysis/firstname1/` : Teammate 1 should have their draft or work in progress Jupyter Notebooks stored here. This will not be marked, but will be checked to ensure all teammates are contributing to the project. Remember to rename this to your names or an alias.
    - `analysis/firstname2/` : Teammate 2 should have their draft or work in progress Jupyter Notebooks stored here. This will not be marked, but will be checked to ensure all teammates are contributing to the project. Remember to rename this to your names or an alias.
    - `analysis/firstname3/` : Teammate 3 should have their draft or work in progress Jupyter Notebooks stored here. This will not be marked, but will be checked to ensure all teammates are contributing to the project. Remember to rename this to your names or an alias.
    - `analysis/submitted/`
    - Note: Students working individually do not need to have subdirectories within the analysis directory and you can safely delete the other directories.
    - You may add additional subdirectories within the current structure, but try to avoid creating any directories in the project root. If you have questions about this, you 
- In your GitHub repository, you should have the following files:
  - README files describing what is happening (or going to happen) in each directory:
    - `data/README.md` : One sentence explaining what will be in this directory
    - `data/raw/README.md`: One sentence explaining what will be in this directory
    - `data/processed/README.md`: One sentence explaining what will be in this directory
    - `images/README.md`: One sentence explaining what will be in this directory
    - `analysis/README.md`: One sentence explaining what will be in this directory
    - `README.md`: This file should contain all the important information someone needs to know about your project
  - `CODE_OF_CONDUCT.md`: This file allows you to set standards for how people should interact with your repository, and signals to others that this is a welcoming and inclusive project; it should also outline procedures for handling abuse.
    - [Follow the steps here to use a Code of Conduct template](https://docs.github.com/en/free-pro-team@latest/github/building-a-strong-community/adding-a-code-of-conduct-to-your-project)
    - `LICENSE`: Your repository currently has a default license called the [MIT license](https://choosealicense.com/licenses/mit/). I suggest choosing the **MIT** license unless you have a strong preference otherwise.

```{warning}
 **Note: GitHub currently does not allow you to upload empty directories, so each directory has a README file that you should populate with relevant information**
```
  <!-- - `LICENSE`: As you create a new repository, [you will be asked to choose a license](https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/licensing-a-repository#applying-a-license-to-a-repository-with-an-existing-license). I suggest choosing the **MIT** license unless you have a strong preference otherwise -->

## Task 2. Choosing a topic and a dataset and get it approved (30%)

1. **YOU MUST HAVE YOUR DATA SET APPROVED BY A TA or the instructor.**
    - To get a dataset approved, create a private Ed Discussion Post, select the "Project" category, and then "Dataset Approval" and fill out the template. Feel free to add image attachments and links as needed. The requirements to choose a dataset are below.

2. **Note: Though it may sound easy, it is not trivial to choose an interesting and relevant dataset. There are many, many thousands out there and the [tyranny of choice](https://www.economist.com/christmas-specials/2010/12/16/you-choose) is pretty overwhelming. I suggest you choose an "industry/sector" (health, technology, finance, sports, etc...), then set a 60 minute timer, start searching, and then choose one before the timer expires. You are welcome to post an issue on Ed Discussion if you want advice or approval of a dataset.**

3. Here are the requirements for choosing a dataset:

**Permission to use and distribute**

- Look for a creative commons license (CC4 for e.g.) or Public Domain and check to make sure you can make it publicly available
- Do not use datasets that require authentication, or APIs

**Data quality**

- Try to choose datasets that have no more than 5-10% missing values
- Ensure there are over 5000 observations in the dataset (this means that you can have 5 columns and 1000 rows, or 10 columns and 500 rows, etc...)
- Ensure there are at least 5 variables of potential interest in the dataset

**Interesting (to you)**

- Make sure you have some basic interest in the subject matter!
- There's nothing worse than doing a 6 week project on the a boring dataset (please don't pick a movies dataset)
- In the final weeks of the course you will be building a Dashboard with your data so choose wisely!

**Add your dataset to the repository**

- If your dataset is a file, and you have permission to redistribute it, you should add it to the `data/raw` directory
- If your dataset is a file,

5. Below are some examples of datasets you are welcome to use for your project: 
  
- [Bike sharing](https://archive.ics.uci.edu/ml/datasets/bike+sharing+dataset)
- [Medical expenses](https://gist.github.com/meperezcuello/82a9f1c1c473d6585e750ad2e3c05a41)
- [Default of credit card](https://archive.ics.uci.edu/ml/datasets/default+of+credit+card+clients)
- [Adult incomes](https://archive.ics.uci.edu/ml/datasets/adult)
- [Parkinsons Telemonitoring](https://archive.ics.uci.edu/ml/datasets/Parkinsons+Telemonitoring)
- [Airbnb dataset](http://insideairbnb.com/get-the-data.html) (you can find information about several cities here and pick the one you want)
- [Air quality dataset](https://archive.ics.uci.edu/ml/datasets/Air+Quality)

There are literally hundreds of thousands of datasets available, I will point you to some high quality sources (keep in mind that I have not personally checked every single dataset):

- [fivethirtyeight](https://data.fivethirtyeight.com)
- [pudding.cool](https://github.com/the-pudding/data)
- [Buzzfeed](https://github.com/BuzzFeedNews/everything)
- [Data.gov](https://www.data.gov/)
- [data.world](https://data.world/) (requires free account)
- [kaggle](https://www.kaggle.com/datasets?license=cc)

6. There are a list of datasets that you are **not** allowed to choose either because A) I know them to be popular not but not great for this project, B) too complicated, C) too simple, or D) many students have chosen it in the past and I am now sick of seeing the same analyses :-).

- ~[Wine quality](http://archive.ics.uci.edu/ml/datasets/Wine+Quality)~
- ~[Pokemon](https://www.kaggle.com/rounakbanik/pokemon)~
- ~[Any YouTube Data](https://www.kaggle.com/rsrishav/youtube-trending-video-dataset)~
- ~[Spotify Dataset](https://www.kaggle.com/yamaerenay/spotify-dataset-19212020-160k-tracks)~

## Task 3. Introduce and describe your dataset and topic. (20%)

Once you choose your dataset, you will need to describe your dataset, as well as the topic(s) or research questions you are interested in.

**If you are doing a group project, you should do this task together and only one response should be submitted.**
Feel free to personalize it a bit though and add sentences or points about individual members of the team. 

The answers to these questions should be placed in the project's **main** README.md file (located in the main repository).

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

## Task 4: Load your dataset from a file or URL (10%)

- For this task, you should create a Jupyter notebook and load your data into a dataframe using Pandas.
- If you are working in a group, each person in the team **must** include a separate Jupyter Notebook (`.ipynb` file) demonstrating proficiency with the things we ask you to do for each milestone.
- Remember that others will be running your analysis notebook so it's important that the data is accessible to them. 
- If your dataset isn't accessible as a URL, make sure to commit it directly into your repo.
- If your dataset is only accessible as a URL, add it to this README: `data/README.md`
  - You should name your files as follows to keep things organized: `analysis/firstname1/milestone1.ipynb`

## Task 5: Submission (10%)

For each Milestone there will be two submissions on Gradescope:

1. Each team member will also submit a teamwork reflection on Gradescope.
> The purpose of this individual report is to give you an avenue to present your viewpoint as to how the project went, how the group worked together, and your role in the group.
> Each group member must complete this form to report on the contributions of **yourself** and the other group members.
> That information can, if needed, be used to adjust final grades of individuals. 
> This is a report private between you and the instructors, meaning that none of your classmates will see this report.
2. One person from the group will submit a URL to the team GitHub repository.

## Working collaboratively in GitHub

As we progress through the course, you will be learning more and more about GitHub and how to work collaboratively on code.
Since this is the first time many of you are using Git, I recommend that if you are working in a group, you avoid editing each others' files until you are more familiar with git.
Below are a few things you may find useful as you continue your git journey.

### How to pull the most recent changes to your computer

If you edit your code on the GitHub web interface, or if another use commits to your repository, to update the repository with the most recent changes, you should **always start a working session by running this command** in your git repository (using either Terminal or GitBash): 

> `git pull`

This will make sure your local computer is updated with any changes.
Commit and push your changes often while you work to stay in sync.

## Team Assignments

You should try to reach out to your teammates as soon as possible via Canvas messages, email, text, etc.