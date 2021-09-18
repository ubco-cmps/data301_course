# Task 2 - Learning Markdown

Markdown is a very useful "markup" language that is very popular in Data Science.
Usually when you want to create a document, your first instinct is likely to open a Microsoft Word, Google Doc, Pages, LibreOffice Writer etc...
In any of those word processor or typesetting programs, to add bold text, headings, italics, links, and other formatting you typically need to click buttons or find things in menus.
This does not make it easy to collect a history of what has happened to every line in your document.
Markdown strips away all the "frills" of a word processor and helps you focus on just the text.
There are no fonts in Markdown (there is only one, the default) and you cannot do everything you can in a traditional spreadsheet program.
But for 99% of the things that people who code have to write, Markdown is more than sufficient!

First, let's get ready by creating a new file to practice in:

## Task 2.1: Creating a new file

1. Create a new file called `activity.md` file and open it in VS Code. You can do this in one line using this command:

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
- Write a sentence (any sentence) after each of the four headings and sub-headings you created. You can [generate and use random sentences here](https://www.lipsum.com).
- Make a single word in one of the sentences you wrote above **bold** by surrounding them in `**`.
- Make a single word in one of the sentences you wrote above *italics by surrounding them in `*`.
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
1. Computer Science
1. Literature
1. English
1. Math
1. Chemistry
1. Biology
```
1. Write a line of code "in-line" with a sentence like this: `print('hello world')` (Note, this code is not going to run (we will talk about this next week), it is only going to be formatted slightly differently so it stands out as code compared to the rest of the text.)
1. Write a block of code after a sentence like this: 
```
num =  10
if num < 5:
    print('Number is less than 5.')
else:
    print('Number is greater than 5.')
```
1. Add a horizontal line using `---`.
1. Add a clickable link in the `activity.md` file like this: [link text](https://cbc.ca).
1. Add a local (i.e. on your computer/repository) image to this file like this:
```
![description of image](dir.png)
```
1. Add an image linked from the internet, for instance [this xkcd comic](https://imgs.xkcd.com/comics/angular_momentum.jpg):
```
![Comic about Angular momentum](https://imgs.xkcd.com/comics/angular_momentum.jpg)

```
1. Add a table of your favourite fruits (make sure to have at least 4 rows), their colour, shape, and size using Markdown syntax like this:
```
| Fruit | Colour | Shape | Size |
| ----- | ------ | ----- | ---- |
|       |        |       |      |
|       |        |       |      |
|       |        |       |      |
```

### Add, commit, and push your changes to GitHub

Add, commit, and then push your changes to GitHub.com using the following commands (we will talk about what exactly this means next time):

```
git add .
git commit -m "Finished markdown syntax."
git push
```

## Task 2.3: Submit your Lab on Gradescope

See [the README file](./README.md) on instructions, and a video on how to submit your lab on Gradescope.

**NOTE: If you make any changes to your GitHub repository, you MUST re-submit on Gradescope to make sure we grade the latest version of your repository. You may submit on Gradescope as many times as you like.**

That's it! 
Nice and easy, lots of new things learned...
You're all done Lab 1!