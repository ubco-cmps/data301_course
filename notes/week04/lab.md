# Lab 2 - Command Line Practice

After an admittedly stressful lab 1 in Excel, I thought it would be good to give you a nice treat with Lab 2. 

This week, there are two tasks for you to do: continuing your machine set-up, and practicing the command-line through a game. 

<div class="container youtube">
<iframe class="responsive-iframe" src="https://www.youtube-nocookie.com/embed/QtxwgG2u6Uc" frameborder="0" allow="accelerometer; autoplay="0"; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

**This lab must be completed individually.**

## Accept the lab

To accept this lab on GitHub Classroom, [you must click this link](https://classroom.github.com/a/iswUpLNP).

## Objectives

- Practice with command-line interfaces
- Create and navigate directories
- Create, modify, rename and delete files
- Understand Git and Git fundamentals

## Marking and Evaluation (20 marks)

**Step 1: Accept the lab assignment**
You can find the link to accept the lab on Canvas.

**Step 2: Clone the repository on your local computer and navigate to that directory**

As with Lab 1, you will need to clone the GitHub repository somewhere locally.
The steps to do this are:

1. `cd /path/to/where/you/want/labs`
2. `git clone https://github.com/data301-2020-winter1/lab2-yourUserName`

## Part 1: Setting up Python and Jupyter Lab (30% - 6 marks)

Below are the instructions for you to continue installing software on your system. We will need this for the first python lecture this week.

- [macOS Part 2](install_ds_stack_mac_part2.md)
- [Windows Part 2](install_ds_stack_windows_part2.md)

At the end, please include a screenshot of a Terminal window, running a Jupyter Lab session locally on your computer, with a Python 3 kernel to get full marks for this portion.

Add the screenshot to the repository (remember to fix the name and add your own commit message):

```
git add screenshot.png
git commit -m "Added Jupyter Lab screenshot"
git push
```

## Part 2: Practicing with Command Line (70% - 14 marks)

This will be updated soon with a video from me guiding you through a game called `Dashcrawl`.
Stay tuned...

Here is a guide to the first few steps of the activity.

### Setting up for the game

1. Open a Terminal window.
2. Change the directory to where this file is: `cd /path/to/this/folder`.
3. Type `ls` into the Terminal; you will see two things: `README.md` and the `entrance` directory.
4. Once you go into the `entrance` directory (`cd entrance`), the command line based game will begin!

**Tip: When I say "go into the <BLANK>" room, I mean change directories using `cd <BLANK>`. In this game, a "room" is a "directory".**

### Starting the game

5. Now that you have entered the dungeon `entrance`, you should type `ls` in the terminal to look around and see what's there.
6. You will see there are two "things" in this room,  there is a `scroll`, and another room called `cellar`.
7. Let's read the scroll using `cat scroll`.

**Tip: When I say "read the scroll", I mean output the contents of the scroll file into the Terminal using `cat scroll`.**

8. Great! The scroll told us that we can look and see what's in the room using `ls` and move in and out of rooms using `cd <directory>`. Let's go into the cellar: `cd cellar`.

9. Once we're in the `cellar`, let's have a look around: `ls`. You should see an `armoury`, a `scroll`, and some `treasure`.

10. Let's read the scroll: `cat scroll`. It should tell you about `ls -F`. Here is some more information about `ls -F`:

> Display a slash (`/') immediately after each pathname that is a directory, an asterisk ('*') after each that is executable, an AT sign ('@') after each symbolic link. 

11. That sounds useful, let's do an `ls -F` in the cellar to see what each of the things are. You'll notice that the armoury is another room, the scroll is just a file, and the treasure has a "*" at the end, so it's an executable. Cool! We don't know what to do with the executable yet, but let's try `cat treasure` to see what happens.

12. Mm. Didn't work - okay let's move on and come back to this room later. Let's go into the `armoury` now: `cd armoury` and then `ls -F`.

13. We see another scroll (and a potion, a treasure, and another room)! Let's read the scroll: `cat scroll`.

14. Oooh, we have now learned how to collect `treasure`! Let's do that in the armoury and follow the instructions to keep our treasure (using environment variables).

**Tip: When I say "pick up the <BLANK>", I mean run the executable file using `./ <BLANK>`.**

15. It tells us to go back and get the treasure from the cellar! Let's go and do that now with `cd ..`, pick up the treasure from the cellar, and then come back to the armoury.

16. The potion is also something we can "pick up", so let's go ahead and do that. It asks us if you want to drink it: type 'Y' for yes, and anything else for no (like 'n'). Choose an option and see what happens (follow on-screen instructions!)

17. Alright check if there's anything else to do this in room, if not, head to the `chamber` next. Start with `ls -F` and hopefully by now, you know the drill!

18. Have fun! More dungeon rooms will open up as you complete certain tasks, kill certain monsters, and read specific scrolls and tomes. Have fun with it, this is your opportunity to practice your Terminal skills - it sure beats the way I learned Terminal commands (blindly typing in commands in a black box until I got it to do what I wanted!). There is no need to hit **every** room in the dungeon, but do make a concerted effort and you'll likely get most of the marks for this lab.

**Tip: You can ignore a few of the more "advanced" entries of the Tome, including anything related to `tmux` or `gzip`. I say "pick up the <BLANK>", I mean run the executable file using `./ <BLANK>`.**

### What you need to submit for Part 2.

When you're done exploring the dungeon there are several things I want you to do:

#### 1. Commit everything to your repository and push to the cloud:

```
git add .
git commit -m "Finished playing with the dungeon"
git push
```

#### 2. Run `tree`, and save the output to a file:

**Update**: This has been made optional because it's not trivial to install `tree` on Windows. [This Piazza post](https://piazza.com/class/keqqsay6su15ea?cid=90) has some directions if you're interested in installing it.

You may need to install tree (if you didn't already do it in the dungeon) with: `conda install -c conda-forge tree`

```
tree
tree > mydungeonmap.md
```

#### 3. Commit the dungeon map to your repository 

Run the following commands in your Terminal:

```
git add .
git commit -m "Added my dungeon map"
git push
```

#### 4. Save the last 100 commands from your Terminal

We want to see some serious effort with the dungeon map, so we are asking for the last 100 commands you entered into the Terminal.
Please open this file and do a quick check to make sure there is no sensitive information in this file (like passwords or private messages).
If there is, you can simply edit file or remove that command.

**Note: Just because we're asking for the last 100 commands doesn't mean that we expect you to have 100 commands, you may have less and you may have more. That's fine.**

```
history 100 > dungeonHistory.md
```
#### 5. Commit the dungeon history to your repository 

Run the following commands in your Terminal:

```
git add .
git commit -m "Added my dungeon map"
git push
```

#### 6. Submit the link to your GitHub.com repo to Canvas

You're done!

## Attribution

The `bashcrawl` game was adapted from `@slackermedia` on GitLab.
FULL Credit for the game goes to [Seth Kenlon](http://slackermedia.info/about/).
The link to the game source code is [here](https://gitlab.com/slackermedia/bashcrawl).