# Task 2 - Learning Markdown (Part 1)

Markdown is a very useful "markup" language that is very popular in Data Science.
Usually when you want to create a document, your first instinct is likely to open a Microsoft Word, Google Doc, Pages, LibreOffice Writer etc...
In any of those word processor or typesetting programs, to add bold text, headings, italics, links, and other formatting you typically need to click buttons or find things in menus.
This does not make it easy to collect a history of what has happened to every line in your document.
Markdown strips away all the "frills" of a word processor and helps you focus on just the text.
There are no fonts in Markdown (there is only one, the default) and you cannot do everything you can in a traditional spreadsheet program.
But for 99% of the things that people who code have to write, Markdown is more than sufficient!

First, let's get ready by creating a new file to practice in:

## Task 2.1: Creating a new file

1. Create a new file called `activity_task2.md` file and open it in VS Code.
You can do this in one line using this command:

```
code activity.md
```
If this does not open a blank file in VS Code, I suggest revisiting the install instructions to make sure that you can open VS Code from the Terminal.

## Task 2.2: Practice Markdown Syntax

While you practice with Markdown syntax, it is useful to see a "Preview" of what it will look like.
Here's the effect of the preview extension you installed in VS Code:

![](images/md_preview.gif)

1. Practice adding the following [Markdown elements](https://www.markdownguide.org/cheat-sheet/) into `activity.md`:

- Add a level 1 heading using "#".
- Add a level 2 heading using "##".
- Add a level 3 heading using "###".
- Add a level 4 heading using "####".
- Write a sentence (any sentence) after each of the four headings you created. You can [generate and use random sentences here](https://www.lipsum.com). Each random sentence is just like a divider between the heading lines of different levels. There should be eight sentences in total, with headings and sentences interleaved.
- Make a single word in one of the sentences (not the headings) you wrote above **bold** by surrounding them in `**`.
- Make a single word in one of the sentences (not the headings) you wrote above *italics* by surrounding them in `*`.

- Create an unordered list of your favourite fruits:
```
- Apple
- Banana
- Orange
- Strawberries
```
- Create an ordered list of your favourite subjects amongst the following: Physics, Chemistry, Biology, Math, Computer Science, English, Literature.
```
1. Physics
2. Computer Science
3. Literature
4. English
5. Math
6. Chemistry
7. Biology
```

### Add, commit, and push your changes to GitHub

Open a Terminal and navigate to where you have cloned your lab (hint: you can use the `cd` command to change directories, and `pwd` command to print out where you are currently in your directory tree).
Add, commit, and then push your changes to GitHub.com using the following commands (we will talk about what exactly this means in class):

```
git add .
git commit -m "Finished Task 2 markdown syntax."
git push
```

Onwards to [Task 3](./Task3.md)!