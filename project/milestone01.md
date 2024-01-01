# Milestone 1 - Form Team and Find Dataset

<head>
  <base target="_blank">
</head>

In this milestone you will be expected to choose a dataset appropriate for the DATA 301 project.
The most important task for this milestone is to select an appropriate dataset.

## Overall Expectations

- On average, all team members should be contributing to the project equally!
- Each team member is responsible for their own research question(s), but the data processing, wrangling, and cleaning steps can be shared. (later in the project milestones)
- Your question, analysis and visualizations should make sense, be well-formed, and it does not have to be complicated. (later in the project milestones)
- You should use proper grammar and full sentences. Point form may occur, but should be less than 30% of your written documents.
- You must use proper English, spelling, and grammar and you should write concisely.
- There should be a plan in place to to deal with any teamwork conflicts and issues.
- Every time you resume working on a project, you should run `git pull` to pull down any changes that may have occurred since the last time you worked on the project.
- You should be committing to git every time you work on this project!
- On average, all team members should be contributing to the project equally!
- Commit messages should be meaningful. We will look at them. It's OK if one or two are less meaningful, but most should provide a short phrase to remind yourself (and others looking at your repository) what the changes were.
- Use GitHub issues to communicate and document major decisions 
- Your question, analysis and visualizations should make sense, be well-formed, but they do not have to be complicated.

## Task 1. Form a Team

You will be doing this projet in **teams of 3**, with no exceptions, as all of the milestones and details are designed for that many students.
As you can imagine, there is a fair bit of anxiety associated with group projects but know that this particular group project has several features that should make it possible to deal with any unforeseen circumstances.
There is a little bit of additional work needed to form a team, so we can make sure that all team members are on the same page, and teamwork can happen harmoniously.
Below is some guidance for you, we expect you to read it all the way through.

### Considerations when looking for a team

It may be very tempting to do this, but try to avoid making a group with people you already know and have worked with in the past.
I know this will be really hard and counter-intuitive, but group dynamics are very tricky and in my experience people that don't know each other from before tend to approach the project and the code of conduct differently.

#### Consideration 1: Interest in the topic

As I've said, the **most important** thing you should look for in a team member, is an interest in the topic of whatever dataset you end up choosing.

#### Consideration 2: Diversity of knowledge, experience, and skills

Here is a self-assessment form that each members of your group should do.

| Traits                                | Beginner | Novice | Expert |
|---------------------------------------|----------|--------|--------|
| General familiarity with technology   |          |        |        |
| Programming Experience (any language) |          |        |        |
| Presentations and communication       |          |        |        |
| Organization and Logistics            |          |        |        |
| Design/Aesthetic skills               |          |        |        |
| Attention to Detail                   |          |        |        |

The ideal group would have a healthy mix of traits in each of the group members.
It's very unlikely that one person will be an "expert" in everything, and we want to make sure the group experience is such that everyone can learn and benefit in different ways.
We are not going to police your groups, but the groups that I "worry about" the most, are those where all members declare themselves as "experts".

#### Consideration 3: Availability 

You should work with group members with whom you can easily find a weekly timeslot to meet, ideally in person and on campus.
There is nothing more frustrating than group members who can't find a time to work on things simultaneously.
If you are a morning person, try to find others who want to work in the mornings.
If you stay up till 3 AM every night, it will likely not make a good match to work with team members who want to meet at 8 AM.

#### Consideration 4: Goals for the project

You should work with group members with shared goals on what your final objective is.
Your objective could be as simple as "do the bare minimum to pass the project", or "do as much as I can given my heavy course and work load" (make sure to define what "as much as I can" means), or "try everything, and aim to do the best I can", or "my goal is to make something I'm proud of that I can show my future employers".
Consider all those options above and make sure your team members are on the same page.

### How to find or create a group

To find or create a group of two or three, here's what you need to do:

1. At some point early in the term, we will have a Project Fair during class to help you form groups.
1. After the Project Fair, you can use Ed Discussion to post an "ad" looking for a team to join, or additional members for a pair.
1. Get in touch with your potential team members (you can message anyone in the class via Ed Discussion). 
1. Share contact details with each other, and arrange for an initial meeting (Zoom, phone, instagram live, whatever y'all use these days). 
    - I will give you some class time to make the initial contact and exchange information.
1. In your initial meeting discuss the following items:
    - What are your interests and goals with this project (datasets, research questions, what you want to learn)?
    - How much time will you be able to dedicate to this project?
    - How frequently will you meet or discuss the project?
    - What are each of your strengths and weaknesses?
    - What will you do if there is a conflict or if issues arises within the team?
    - Do you all agree to stay in touch, and keep everyone informed despite how busy you are? I suggest setting a response time, say a response time of ~ 12-24 hours.
    - Do you think you will be able to work together for this project?
    - I suggest looking over Milestone 1 as a team and coming up with your answers together.
1. Once your initial meeting is done and you have answered those questions together, **one person in the team should submit Milestone 1 on Prairielearn** and answer all the questions. 

You should try to reach out to your teammates as soon as possible via Ed Discussion, Canvas messages, Whatsapp, Snapchat, Instagram, canary bird, email, text, etc.

### Join a Group on Canvas

All students (even those doing the project individually) must join a "group" on Canvas so you can be assigned a group number. 
Group numbers are sequential from 1 onwards.
Please try to join groups sequentially - i.e. don't join group 55 when the next available group is 6.
**Please do not join a group without talking to the other member(s) first and discussing a plan (see below).**

<img src="images/projects.png">

## Task 2. Choose a topic and a dataset, and get it approved 

1. **YOU MUST HAVE YOUR DATA SET APPROVED BY THE PROJECT TAs or the instructor.**
    - To get a dataset approved, fill out the questions on Prairielearn for Milestone 1. The requirements to choose a dataset are below.

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
- ~[Students Performance in Exams](https://www.kaggle.com/datasets/whenamancodes/students-performance-in-exams)~

## Task 3: Accept Project repository and understand the structure

### Step 1: Accept the repository

The first step is to create/join a GitHub repository:
- Discuss with your partner(s) to determine which of you will accept the initial repository link (only one person in a group should accept the link).
- If you are the first person in the group, click this link to accept the Template Project GitHub Classroom where you normally accept your Labs.
- Make sure you set the name of your repository to be exactly this: `groupYY` (where `YY` is your Canvas group number) and then let your team member(s) know the name of your group.
- Other team member(s) should search for their group name and join it.
- Each team member should then `clone` the repo locally on their computer, and run the following steps:
    - Open a terminal and `cd` into the project repo: `cd project-groupYY` (or something similar).
    - Type in `git status` to make sure they're on the `main` branch, and then run `git pull` to pull down the latest from GitHub.
    - Make sure `nbdev` is installed with: `conda install -c conda-forge nbdev`
    - Make sure `pre-commit` is installed, in a Terminal type in `conda install -c conda-forge pre-commit`.
    - In the same Terminal, type `pre-commit install` to install the pre-commit hooks I have added to this repo to protect you from accidentally committing large files to the repo, committing files that contain merge conflicts (without resolving them), and hopefully, preventing you from committing broken Jupyter notebook files.
    - Note: pre-commit is outside the scope of this course, but it's a very cool system. You're welcome to [read more about it here](https://pre-commit.com)

### Step 2: Understand the repository organization

- Once you accept the project repository, you will see a list of template files and directories that have been created for you already to add some structure to the project.
- **Even though you won't be working with most of the files in this milestone**, you should still read the descriptions below to understand how the repository is organized.

- Here is description of the file and folder structure of this project: 
  - `data` - your data files should be split up into "raw" and "processed":
    - `data/raw` - raw data should go in this directory; you should add the original source file here. Always keep the original data file without editing.
    - `data/processed` - You can add cleaned up, and processed data files in this directory.
  - `images` - any external images you use should be in this directory so things are organized.
  - `analysis` - all Jupyter Notebook files should be kept in this parent directory. Keep this folder organized and have as few notebooks in here as possible.
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
## Task 4: Create a project vision statement

Creating a project vision statement is an essential aspect of good project planning.
In this section, I will be referencing [Dovile Misevičiūtė's excellent article](https://teamhood.com/project-management/project-vision-statement-make-sure-it-works/) on project vision statements.
Dovile is an employee at [Teamhood](https://teamhood.com) (a project management software company) and describes the purpose of a project vision statement: 

> **"to guide, motivate and inspire the people working on the project"**.

The following is a more detailed description, again by [Dovile](https://teamhood.com/project-management/project-vision-statement-make-sure-it-works/):

> Comprised out of only few sentences, it communicates the general feeling more than anything else. The vision statement is not supposed to give directions on how the team should act in any situation, but instead relays the core values and the end goal. Based on this information the team or individual team members can make decisions that best serve the project. A vision statement is the main tool to give knowledge on where the project should be going and thus should not be underestimated. It helps your team members make the right decisions. It motivates to complete tasks that are necessary for the end goal. And it inspires new action or solutions to achieve the desired result. Writing a project vision statement that contains all this is not easy and should be taken seriously.

Dovile's article offers a few suggestions to consider when writing your project vision statement:

> 1. **Make it concise and easy to understand**. It is best when your project vision statement is not only easy to understand, but also easy to remember. The shorter and clearer you make it, the less grey area there is for your team members to interpret in their own way. Also, if they can easily remember it, they are more likely to follow it.
> 
> 2. **Specify, but do not limit.** Your vision statement should define the end goal and additional criteria that will make the project a success. However, it should not be focused on one specific way to achieve this end goal. Instead it should allow multiple paths to the desired result and encourage action from both stakeholders and the team.
> 
> 3. **Look into the future.** When writing a project vision statement, your focus should be on what you aim to achieve in a certain time frame. Instead of focusing on what you want now, look 5, 10, 20 years (*of course, for Data 301, this should be adjusted to **weeks** instead of **years**) ahead and set your goals on where you want to be. Thus driving your operation forward and aiming to reach certain results in a certain time frame.
> 
> 4. **Make it inspirational and challenging.** Your vision statement should be about something that the whole team is excited to achieve. At the same time, this goal should be something of a challenge that would be possible long-term and not in the near future. This way your team is excited to work hard in order to get something that is possible along the way.
> 
> 5. **Don’t be too specific.** When writing your vision, leave some space for changes. It is impossible to know what will happen in the next five years, thus keeping some vagueness to your goal means it won’t become inapplicable down the road.
> 
> 6. **Write about who you are.** The best vision statements are about who you are as a company or team and who you wish to become.

## Submission

1. Once the groups are setup, a new Group Assignment will appear on PrairieLearn and you can work together to submit the information we're looking for in Milestone 1 on Prairielearn. Once you submit it, you may continue to work on the next milestone. Remember to double check that your group is setup correctly!

1. Each team member will also submit a teamwork reflection a few times in the term in their weekly learning logs (also on Prairielearn).
> The purpose of this individual report is to give you an avenue to present your viewpoint as to how the project went, how the group worked together, and your role in the group.
> Each group member must complete this form to report on the contributions of **yourself** and the other group members.
> That information can, if needed, be used to adjust final grades of individuals. 
> This is a report private between you and the instructors, meaning that none of your classmates will see this report.

## Task 4: Submit Milestone 1

Milestone 1 will be submitted on Prairielearn.
There are a series of questions you need to answer about your dataset.
Here are the questions you can expect in Milestone 1:

1. What is your project group number?
1. Who are the members in your group? You will need to know their full names (hopefully you know more than their full names by this point).
1. **Describe your dataset**: In one sentence, describe your dataset.
1. **What is the source of your dataset?**: In addition to describing the source, please also include a link to where you found the dataset.
1. **License: what is the license of your dataset? CC0, MIT, etc...**: If your license is not specified, you need permission to distribute it publicly in a GitHub repository.
1. **Rows**: How many rows of data are in your dataset? Combine across all files if you're working with multiple files.
1. **Columns**: How many columns of data exist in your dataset? Combine across all files if you're working with multiple files.
1. **Interests**: Why do you want to work with this dataset? What research questions/areas are you interested in? Note: Each member of the group should have their own research interests/angle/slant.

## Appendix

### Working collaboratively in GitHub

As we progress through the course, you will be learning more and more about GitHub and how to work collaboratively on code.
Since this is the first time many of you are using Git, I recommend that if you are working in a group, you avoid editing each others' files until you are more familiar with git.
Below are a few things you may find useful as you continue your git journey.

#### How to pull the most recent changes to your computer

If you edit your code on the GitHub web interface, or if another use commits to your repository, to update the repository with the most recent changes, you should **always start a working session by running this command** in your git repository (using either Terminal or GitBash): 

> `git pull`

This will make sure your local computer is updated with any changes.
If you expect that some of the same files have been edited (or if your `git pull` fails), you can try:

```
git pull --no-ff
```

Commit and push your changes often while you work to stay in sync.