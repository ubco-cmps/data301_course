# Milestone 6 - Address Feedback and Refine project

In this milestone you will continue working on your class project, process the data for your dashboard, and get the repo ready final submission in Milestone 4.

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

## Task 1: Address project feedback

- Your assigned project TA should have created an issue in your repository with some feedback for you to address on your milestone.

- You should spend the majority of time this week to address the feedback you have received from your TA.

## Task 2: Final Report: Create a single **markdown** file that will be your final report.

- Once you're done your analysis and you've addressed all the TA and instructor feedback to improve your project, you will export your final figures as PNG (or JPEG) files, and then consolidate your findings into a single markdown file.

- The name of your markdown file should be: `final_report_groupYY.md` (replace `YY` with your group number), and it should be located in the **root** of your project repository.

- This markdown file is a major deliverable and will require some coordination amongst your teammates to ensure that it is a cohesive and complete document, that provides a summary of all your hard work.

- This markdown file should NOT have **any** code in it, it is meant to be a narrative/summary of your exploratory data analysis, as well as your actual analyses. 

- You should of course, link to your jupyter notebooks because a portion of your audience will be interested in digging deeper into the analysis and looking at the code.
    - For example, this can look like: "You can [find the full analysis notebook here, including the code and the data here](https://direct-link-to-your-notebook.ca)

- Here are the **suggested sections** of your Final Report:
    - **Introduction**: A short paragraph introducing your project to the audience and a motivation for why this project is important. It's fine to say your group has an interest in this topic and were keen to explore it more.
    - **Exploratory Data Analysis**: A summary of the **highlights** of your EDA, where you can show some visualizations of the exploratory data analysis your group did.
    - **Question 1 + Results**: Clearly state your research question, and include 2-3 visualizations that helped you answer your research question. You can create multi-panel figures, but each of your visualizations must speak directly to your research question, and any insights you were able to get from it should be clearly articulated in the figure caption/description.
    - **Question 2 + Results**: Same as above.
    - **Question 3 + Results**: Same as above.
    - **Summary/Conclusion**: A brief paragraph that highlights your key results and what you learned from doing this project.

## Task 3: Make your repository public 

[Here](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/setting-repository-visibility#changing-a-repositorys-visibility) is how to make your repository public (within the DATA 301 organization).

1. On GitHub, navigate to the main page of the repository.

2. Under your repository name, click Settings.

<img src="https://docs.github.com/assets/images/help/repository/repo-actions-settings.png" width="600px">

3. Under "Danger Zone", to the right of to "Change repository visibility", click Change visibility.

<img src="https://docs.github.com/assets/images/help/repository/repo-change-vis.png" width="600px">

4. Select a visibility.

<img src="https://docs.github.com/assets/images/help/repository/repo-change-select.png" width="600px">

## Task 4: Create a release for your repository 

Create a new release for your project called 0.1.0.

As you progress through your project, you can add more releases, once you're happy with where you're at, I suggest creating a new release at 1.0 (perhaps just before you're submitting your final milestone?).

### Creating a new release

[Here](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/managing-releases-in-a-repository) are the instructions to create a release.

Briefly, here is how to create a release ([from the docs](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/managing-releases-in-a-repository)):

1. On GitHub, navigate to the main page of the repository.

2. To the right of the list of files, click Releases or Latest release.

<img src="https://docs.github.com/assets/images/help/releases/release-link.png" width="600px">

3. Click Draft a new release.

<img src="https://docs.github.com/assets/images/help/releases/draft_release_button.png" width="600px">

4. Type a version number for your release. Versions are based on Git tags.

<img src="https://docs.github.com/assets/images/help/releases/releases-tag-version.png" width="600px">

5. Use the drop-down menu to select the branch that contains the project you want to release.

<img src="https://docs.github.com/assets/images/help/releases/releases-tag-branch.png" width="600px">

6. Type a title and description for your release.

<img src="https://docs.github.com/assets/images/help/releases/releases_description.png" width="600px">

7. Once you're ready to publicize your release, click Publish release. To work on the release later, click Save draft.

### Additional Information

When developers (like you!) are working on a software project that others will be using or viewing, they need a way to communicate with their users when new features are released and bugs are fixed.
Typically, this is done by creating **version** and you're likely most familiar with this with your phone or laptop operating system (OS).
For instance, if you have an iPhone the latest version of your OS is 14.2.1 - what do the 14, 2 and 1 mean?
There are conventions, and the one that I suggest you follow is: [Semantic Versioning](https://semver.org).

From [semver.org](https://semver.org), here is the summary:

Given a version number MAJOR.MINOR.PATCH, increment the:

1. MAJOR version when you make incompatible API changes,
1. MINOR version when you add functionality in a backwards compatible manner, and
1. PATCH version when you make backwards compatible bug fixes.

## OPTIONAL Task 5: Give others feedback!

Many of your classmates are doing some very interesting projects with some cool datasets.
Since this is a course introducing you to Data Analytics, I think it would be very helpful for you to look at their analyses and results, think critically about it, and perhaps provide some useful feedback.

I'll try and facilitate this during our lecture this week, and also online on {{ FORUM_LINK }}.

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

### Git Issues, Milestones, Labels, and Assignees

From GitHub's documentation:

> **Issues** are a great way to keep track of tasks, enhancements, and bugs for your projects. They’re kind of like email—except they can be shared and discussed with the rest of your team. Most software projects have a bug tracker of some kind. GitHub’s tracker is called Issues, and has its own section in every repository.

<!-- <img src="https://guides.github.com/features/issues/navigation-highlight.png" width="600px"> -->

> **Labels** are a great way to organize different types of issues. Issues can have as many labels as you want, and you can filter by one or many labels at once.

<!-- <img src="https://guides.github.com/features/issues/labels-listing.png" width="600px"> -->

> **Milestones**, are groups of issues that correspond to a project, feature, or time period. People use them in many different ways in software development.

<!-- <img src="https://guides.github.com/features/issues/milestones.png" width="600px"> -->

> Assignees are a great way to filter, categorize issues, and remember what you're responsible to do. Each issue can have an assignee — one person that’s responsible for moving the issue forward. Assignees are selected the same way milestones are, through the grey bar at the top of the issue. 

<!-- <img src="https://docs.github.com/assets/images/help/repository/repo-change-vis.png" width="600px"> -->

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