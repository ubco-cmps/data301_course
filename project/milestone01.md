# Milestone 1

In this milestone you will be expected to choose a dataset appropriate for the DATA 301 project.
The most important task for this milestone is to select an appropriate dataset and load in your data.

I encourage you to use the Ed discussion dashboard if you have questions so I can either A) clarify the instructions before the milestone is released and B) answer your questions without too much back and forth.

## Due Date 

The tentative due date for this milestone is **Friday February 5, 2021** (with the usual grace period).

## Overall Expectations

- You should be committing to git every time you work on this project.
- On average, all team members should be contributing to the project equally!
- git commit messages should be meaningful. These will be marked. It's OK if one or two are less meaningful, but most should be.
- Use GitHub issues to communicate and document major decisions 
- Your question, analysis and visualizations should make sense. It doesn't have to be complicated.
- You should use proper grammar and full sentences in your READMEs. Point form may occur, but should be less than 30% of your written documents.
- You must use proper English, spelling, and grammar.
- You should write concisely. 
- If there's any further uncertainty in determining a grade here, the [UBC MDS writing rubric](https://github.com/UBC-MDS/public/blob/master/rubric/rubric_writing.md) will be used.

## Task 1: Project Setup (30%)

Here is a 3-minute video on how to accept your GitHub Classroom group assignment:

<div class="container youtube">
<iframe class="responsive-iframe" src="https://www.youtube-nocookie.com/embed/QxrA3taZdNM" frameborder="0" allow="accelerometer; autoplay="0"; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

- Accept the [Template Project group assignment](https://classroom.github.com/g/u_qE4Ryq)
- I suggest you try working in `repl.it` for collaboratively editing your READMEs, but for now, work in your own Jupyter Notebooks
- If you are working individually, name your team as "solo_###" where ### is the Group Number found at the end of this file
- If you are working in a group of 3, first look to see if someone from your group has already created a team, look for `group_####`. If you see it, join that team.
  - If you do not, you are the first person accepting the assignment and you should create a team, call the team: `group_####` where #### is the four digit Group Number found at the bottom of this file.
- In your GitHub repository create the following directories:
  - **Note: GitHub currently does not allow you to upload empty directories, so each directory must have a file in it (usually a README)**
  - `data` - all your data should go in this parent directory; a final data set may reside in this directory
    - `data/raw` - raw data should go in this directory
    - `data/processed` - cleaned and processed data exports should go in this directory
  - `images` - any external images you use should be in this directory
  - `analysis` - all jupyter notebook files should be in this parent directory
    - `analysis/firstname1/` : Teammate 1 should have their draft or work in progress Jupyter Notebooks stored here. This will not be marked, but will be checked to ensure all teammates are contributing to the project.
    - `analysis/firstname2/` : Teammate 2 should have their draft or work in progress Jupyter Notebooks stored here. This will not be marked, but will be checked to ensure all teammates are contributing to the project.
    - `analysis/firstname3/` : Teammate 3 should have their draft or work in progress Jupyter Notebooks stored here. This will not be marked, but will be checked to ensure all teammates are contributing to the project.
    - `analysis/submitted/`
    - Note: Students working individually do not need to have subdirectories within the analysis directory.
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
  - `LICENSE`: As you create a new repository, [you will be asked to choose a license](https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/licensing-a-repository#applying-a-license-to-a-repository-with-an-existing-license). I suggest choosing the **MIT** license unless you have a strong preference otherwise

<img src="https://docs.github.com/assets/images/help/repository/repository-license-picker.png" width="600px">

## Task 2. Choosing a topic and a dataset and get it approved (30%)

1. ** YOU MUST HAVE YOUR DATA SET APPROVED BY YOUR ASSIGNED TA. **

2. **Note: Though it may sound easy, it is not trivial to choose an interesting and relevant dataset. There are many, many thousands out there and the [tyranny of choice](https://www.economist.com/christmas-specials/2010/12/16/you-choose) is pretty overwhelming. I suggest you choose an "industry/sector" (health, technology, finance, sports, etc...), then set a 60 minute timer, start searching, and then choose one before the timer expires. You are welcome to post an issue on Piazza if you want advice or approval of a dataset.**

3. Here are the requirements for choosing a dataset:

**Permission to use and distribute**

- Look for a creative commons license (CC4 for e.g.) or Public Domain and check to make sure you can make it publicly available
- Do not use datasets that require authentication, or APIs

**Data quality**

- Try to choose datasets that have no more than 5-10% missing values
- Ensure there are over 5000 rows/observations in the dataset
- Ensure there are at least 5 variables of potential interest in the dataset

**Interesting (to you)**

- Make sure you have some basic interest in the subject matter!
- There's nothing worse than doing a 6 week project on the a boring dataset (please don't pick a movies dataset)
- In the final weeks of the course you will be building a Dashboard with your data so choose wisely!

**Add your dataset to the repository**

- If your dataset is a file, and you have permission to redistribute it, you should add it to the `data/raw` directory
- If your dataset is a file,

Below are some examples of datasets you are welcome to use for your project: 
  
- [Bike sharing](https://archive.ics.uci.edu/ml/datasets/bike+sharing+dataset)
- [Medical expenses](https://gist.github.com/meperezcuello/82a9f1c1c473d6585e750ad2e3c05a41)
- [Default of credit card](https://archive.ics.uci.edu/ml/datasets/default+of+credit+card+clients)
- [Wine quality](http://archive.ics.uci.edu/ml/datasets/Wine+Quality)
- [Adult incomes](https://archive.ics.uci.edu/ml/datasets/adult)
- [Parkinsons Telemonitoring](https://archive.ics.uci.edu/ml/datasets/Parkinsons+Telemonitoring)
- [Airbnb dataset](http://insideairbnb.com/get-the-data.html) (you can find information about several cities here and pick the one you want)
- [Air quality dataset](https://archive.ics.uci.edu/ml/datasets/Air+Quality)

There are literally hundreds of thousands of datasets available, here are some pointers to some high quality sources (keep in mind that I have not personally checked every single dataset):

- [fivethirtyeight](https://data.fivethirtyeight.com)
- [pudding.cool](https://github.com/the-pudding/data)
- [Buzzfeed](https://github.com/BuzzFeedNews/everything)
- [Data.gov](https://www.data.gov/)
- [data.world](https://data.world/) (requires free account)
- [kaggle](https://www.kaggle.com/datasets?license=cc)

## Task 3. Introduce and describe your dataset and topic. (20%)**

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

**Additional Guidance:** Your audience is fellow data scientists. You probably will not need more than 150 words to describe your dataset. All the questions above do not need to be answered, it's more to guide your exploration and think a little bit about the context of your data. It is also possible you will not know the answers to some of the questions above, that is FINE - data scientists are often faced with the challenge of analyzing data from unknown sources. Do your best, acknowledge the limitations of your data as well as your understanding of it. Also, make it clear what you're speculating about. For example, "I speculate that the {...column_name...} column must be related to {....} because {....}."

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

For each Milestone there will be two submissions on Canvas:

1. Each team member will submit a teamwork reflection on Canvas.

The purpose of this individual report is to give you an avenue to present your viewpoint as to how the project went, how the group worked together, and your role in the group.
Each group member must complete this form to report on the contributions of **yourself** and the other group members.
That information can, if needed, be used to adjust final grades of individuals. 
This is a report private between you and the instructors, meaning that none of your classmates will see this report.

1. One person from the group will submit a URL to the team GitHub repository.

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

You should try to reach out to your teammates as soon as possible, Discord is a good choice, or Ed discussion, or via Canvas messages.

Individual or Solo projects also have a "group number" for marking purposes.
Everyone that has a 3 digit Group number is doing their projects solo.
Actual "Groups" are at the bottom, in group numbers 6000 and above.

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th></th>
      <th>Name</th>
      <th>GitHub</th>
    </tr>
    <tr>
      <th>TA</th>
      <th>GroupNumber</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th rowspan="5" valign="top">Ta1</th>
      <th>Group300</th>
      <td>Name1</td>
      <td>Unknown</td>
    </tr>
    <tr>
      <th>Group301</th>
      <td>Name2</td>
      <td>Unknown</td>
    </tr>
    <tr>
      <th>Group6013</th>
      <td>Name2</td>
      <td>githubname</td>
    </tr>
    <tr>
      <th>Group6013</th>
      <td>Name3</td>
      <td>githubname</td>
    </tr>
    <tr>
      <th>Group6013</th>
      <td>Name4</td>
      <td>Unknown</td>
    </tr>
    <tr>
      <th rowspan="5" valign="top">TA2</th>
      <th>Group200</th>
      <td>Name5</td>
      <td>githubname</td>
    </tr>
    <tr>
      <th>Group201</th>
      <td>Name6</td>
      <td>githubname</td>
    </tr>
    <tr>
      <th>Group6001</th>
      <td>Name7</td>
      <td>unknown</td>
    </tr>
    <tr>
      <th>Group6001</th>
      <td>Name8</td>
      <td>Unknown</td>
    </tr>
    <tr>
      <th>Group6001</th>
      <td>Name8</td>
      <td>Unknown</td>
    </tr>
    <tr>
      <th rowspan="63" valign="top">TA3</th>
      <th>Group100</th>
      <td>Name9</td>
      <td>githubname</td>
    </tr>
    <tr>
      <th>Group101</th>
      <td>Name10</td>
      <td>githubname</td>
    </tr>
    <tr>
      <th>Group6003</th>
      <td>Name11</td>
      <td>unknown</td>
    </tr>
    <tr>
      <th>Group6003</th>
      <td>Name12</td>
      <td>githubname</td>
    </tr>
    <tr>
      <th>Group6003</th>
      <td>Name13</td>
      <td>gitbubname</td>
    </tr>
  </tbody>
</table>
