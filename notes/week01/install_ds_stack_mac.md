(page_install_ds_stack_macOS)=
MDS software stack install instructions for macOS
=======================

<!-- Open links in a new tab unless they have the `` attribute -->
<head>
    <base target="_blank">
</head>

```{important} 
This guide has been (lightly) adapted from the UBC-Vancouver [MDS Install stack](https://ubc-mds.github.io/resources_pages/installation_instructions/) under a CC-BY-SA 4.0 license.
```

These instructions will walk you through installing the required Data Science software stack for the UBC Master of Data Science program. Before starting, ensure that your laptop meets our program requirements:

 - runs one of the following operating systems: macOS 10.15.X (Catalina), Ubuntu 20.04, Windows 10 Professional, Enterprise or Education; version 2004.
    - **Windows 10 Home is not sufficient** as not all the software required for the program can be installed on that OS. [Click here to download Windows 10 Education for free from UBC.](https://it.ubc.ca/software-downloads)
    - When installing Ubuntu, checking the box "Install third party..." will (among other things) install proprietary drivers, which can be helpful for wifi and graphics cards.
- can connect to networks via a wireless connection
- has at least 50 GB disk space available
- has at least 8 GB of RAM
- uses a 64-bit CPU
- is at most 6 years old at the start of the program (4 years old or newer is recommended)
- uses English as the default language
- student user has full administrative access to the computer

**Students' whose laptops do not meet the requirements specified above will not be able to receive technical assistance from the course team in troubleshooting installation issues.**

## Table of Contents

- [UBC Student Email](#ubc-student-email)
- [Web browser](#web-browser)
- [Visual Studio Code](#visual-studio-code)
- [VS Code extensions](#vs-code-extensions)
- [GitHub](#github)
- [Git](#git)


## Installation notes

If you have already installed Git, Latex, or any of the R or Python related packages please uninstall these and follow the instructions below to reinstall them (make sure to also remove any user configuration files and backup them if desired).
In order to be able to support you effectively and minimize setup issues and software conflicts, we require all students to install the software stack the same way.

In all the sections below, if you are presented with the choice to download either a 64-bit (also called x64) or a 32-bit (also called x86) version of the application **always** choose the 64-bit version.

Once you have completed these installation instructions, make sure to follow the post-installation notes at the end to check that all software is setup correctly.

## UBC Student Email

Please sign up for a UBC Student Email. 
This account will also grant you access to a range of UBC services, including Microsoft Teams and OneDrive. 
To do so navigate to [https://it.ubc.ca/services/email-voice-internet/ubc-student-email-service](https://it.ubc.ca/services/email-voice-internet/ubc-student-email-service) and follow the instructions under "Get Started". 

## Web browser

In MDS we will be using many tools that work most reliably on Google Chrome and Firefox (including our online quiz software), so we recommend that you use one of these browsers.

- To install Chrome, go to [https://www.google.com/chrome/](https://www.google.com/chrome/), click on "Download Chrome" and follow the instructions on the website to finish the installation.
- To install Firefox, go to [https://www.mozilla.org/en-US/firefox/new/](https://www.mozilla.org/en-US/firefox/new/), click on "Download Firefox" and follow the instructions on the website to finish the installation.

## Install Microsoft Office

UBC students have free access to a Microsoft Office 365 annual subscription, which is renewed for students enrolled in at least one course.
Office 365 includes Word, Excel, PowerPoint, Outlook, and OneNote, and is available on a variety of platforms, including Windows, Mac, and Linux/Android.

To get your free Office 365 license and download the installer files, visit [UBC IT] (https://it.ubc.ca/services/desktop-print-services/software-licensing/office-365-students) and click `Download Office 365`.
Note that you will need your CWL login credentials in order to download the software and activate your license.

## Visual Studio Code

The open-source text editor Visual Studio Code (VS Code) is both a powerful text editor and a full-blown Python IDE, which we will use for more complex analysis.
You can download and install the macOS version of VS Code from the VS code website [https://code.visualstudio.com/download](https://code.visualstudio.com/download).
Once the download is finished, click "Open with Archive utility", and move the extracted VS Code application from "Downloads" to "Applications".

### Launch from the Terminal (aka command line)

1. Launch VS Code.
2. Open the Command Palette (⇧⌘P ; shift+command+P).
3. Type 'shell command' to find the "Shell Command: Install 'code' command in PATH" command.
4. Hit Enter
5. Restart the terminal for the new $PATH value to take effect. 

You can open files in VS Code from the Terminal!
Alternatively, just type `code .` in any folder to start editing files in that folder.

You can test that VS Code is installed and can be opened from Terminal by restarting terminal and typing the following command in a Terminal:

```
code --version
```

you should see something like this if you were successful:

```
1.48.2
a0479759d6e9ea56afa657e454193f72aef85bd0
x64
```

[Manual install instructions are here, but remember you're using the zsh now!](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line) steps as well.

### VS Code extensions

The real magic of VS Code is in the extensions that let you add languages, debuggers, and tools to your installation to support your specific workflow. Now that we have installed all our other Data Science tools, we can install the VS Code extensions that work really well with them. From within VS Code you can open up the [Extension Marketplace (read more here)](https://code.visualstudio.com/docs/editor/extension-gallery) to browse and install extensions by clicking on the Extensions icon in the Activity Bar indicated in the figure below.

<img src="../../images/vscode.png" alt = ""/>

To install an extension, you simply search for it in the search bar, click the extension you want, and then click "Install". There are extensions available to make almost any workflow or task you are interested in more efficient! Here we are interested in setting up VS Code as a Python IDE. To do this, search for and install the following extensions:

- Python (everything Python: notebooks, debugging, linting, formatting, etc.)
- markdownlint (markdown linting and style checking extension)
- GitLens - Git supercharged (powerful extension that extends VS Code's native git capabilities)
- (Optional) Bracket Pair Colorizer 2 (add colour to help distinguish your brackets: (), [], {})

[This video tutorial](https://www.youtube.com/watch?v=06I63_p-2A4) is an excellent introduction to using VS Code in Python.

## GitHub.com

We will use the publicly available [GitHub.com](https://github.com/).

Sign up for a free account at [GitHub.com](https://github.com/) if you don't have one already.

## Configure Git on your computer

We will be using the command line version of Git as well as Git through RStudio and JupyterLab. Some of the Git commands we will use are only available since Git 2.23, so if your Git is older than this version, we ask you to update it using the Xcode command line tools (not all of Xcode), which includes Git.

Open Terminal and type the following command to install Xcode command line tools:

```
xcode-select --install
```

After installation, in terminal type the following to ask for the version:

```
git --version
```

you should see something like this (does not have to be the exact same version) if you were successful:

```
git version 2.24.3 (Apple Git-127)
```

> Note: If you run into trouble, this is the time to post on Piazza with your error message and ask for help!

### Configuring Git user info

Next, we need to configure Git by telling it your name and email. To do this type the following into the terminal (replacing Jane Doe and janedoe@example.com, with your name and email (the same used to sign up for GitHub), respectively):

```
git config --global user.name "Jane Doe"
git config --global user.email janedoe@example.com
```

> Note: to ensure that you haven't made a typo in any of the above, you can view your global Git configurations by either opening the configuration file in a text editor (e.g. via the command `code ~/.gitconfig`) or by typing `git config --list --global`.

## Terminal

Apple recently changed the Mac default shell in the Terminal to Zsh - though the [reasons for this](https://thenextweb.com/dd/2019/06/04/why-does-macos-catalina-use-zsh-instead-of-bash-licensing/) are complicated, it is a huge improvement over the out-dated Bash version that came pre-installed on macOS.

To make sure your shell is set to Zsh, open up your Terminal and run this command:

```
chsh -s path
```

### [Optional] Install Ohmyzsh to get Terminal colours, and highlighting

Oh My Zsh is installed by running the following command in your Terminal: 

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

You may now customize your Terminal with themes by [following the directions here]("https://github.com/ohmyzsh/ohmyzsh#selecting-a-theme"].

### Setting VS Code as the default editor

To make programs run from the terminal (such as `git`) use VS Code by default, we will modify `~/.z_profile`. First, open it using VS Code:

```
code ~/.z_profile
```

> Note: If you see any existing lines in your `~/.z_profile`
> related to a previous Python or R installation,
> please remove these.

Paste the following lines to the new file that opens up:

```
# Set the default editor for programs launch from terminal
EDITOR="code --wait"
VISUAL=$EDITOR  # Use the same value as for "EDITOR" in the line above
```

Then save the file and exit VS Code.

> Most terminal programs will read the `EDITOR` environmental variable when determining which editor to use, but some read `VISUAL`, so we're setting both to the same value.

## Python, Conda, and JupyterLab

### Python and Conda

We will be using Python for a large part of the program, and `conda` as our Python package manager. To install Python and the `conda` package manager, we will use the [Miniconda platform (read more here)](https://docs.conda.io/en/latest/miniconda.html), which [Miniconda MacOSX 64-bit pkg install for Python **3.8** can be downloaded here.](https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.pkg).

After installation, restart the terminal. If the installation was successful, you will see `(base)` prepending to your prompt string. To confirm that `conda` is working, you can ask it which version was installed:
```
conda --version
```
which should return something like this:

```
conda 4.8.2
```

> Note: If you see `zsh: command not found: conda`, see the section on [Bash](#bash-shell) above to set your default Terminal shell to Bash as opposed to Zsh.

Next, type the following to ask for the version of Python:
```
python --version
```
which should return something like this:

```
Python 3.8.3
```

> Note: If instead you see `Python 2.7.X` you installed the wrong version. Uninstall the Miniconda you just installed (which usually lives in the `/opt` directory), and try the installation again, selecting **Python 3.8**.

## Essential Python packages

`conda` installs Python packages from different online repositories which are called "channels".
A package needs to go through thorough testing before it is included in the default channel,
which is good for stability,
but also means that new versions will be delayed and fewer packages are available overall.
There is a community-driven effort called the [conda-forge (read more here)](https://conda-forge.org/),
which provides more up to date packages
To enable us to access the most up to date version of the Python packages we are going to use,
we will add the more up to date  channel,
To add the conda-forge channel by typing the following in the terminal:


```
conda config --add channels conda-forge

```

To install packages individually, we can now use the following command: `conda install "<package-name>"`. Let's install the key packages needed for the start of our program:

```
conda install \
 "jupyterlab=2.*" \
 "numpy=1.*" \
 "pandas=1.*" \
 "flake8=3.*" \
 "black=19.*"
```

`conda` will show you the packages that will be downloaded,
and you can press enter to proceed with the installation.
If you want to answer `yes` by default and skip this confirmation step,
you can replace `conda install` with `conda install -y`.

## Test JupyterLab 

To test that your JupyterLab installation is functional, you can type `jupyter lab` into a terminal, which should open a new tab in your default browser with the JupyterLab interface.
To exit out of JupyterLab you can click `File -> Shutdown`,
or go to the terminal from which you launched JupyterLab and hold `Ctrl` while pressing `c` twice.

You're all done!

## Attributions

* [Harvard CS109](http://cs109.github.io/2015/)
* [UBC STAT 545](http://stat545.com/packages01_system-prep.html#mac-os-system-prep) licensed under the [CC BY-NC 3.0](https://creativecommons.org/licenses/by-nc/3.0/legalcode).
* [Software Carpentry](https://software-carpentry.org/)
* [Oracle - How do I set or change the PATH system variable?](https://www.java.com/en/download/help/path.xml)
* [Numerical Methods - Getting started](https://clouds.eos.ubc.ca/~phil/numeric/python.html)
* [MDS Data Science Install Stack](https://ubc-mds.github.io/resources_pages/installation_instructions/)
