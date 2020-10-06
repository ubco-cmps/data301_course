(page_install_ds_stack_macOS_part2)=
MDS software stack install instructions for macOS - Part 2
=======================

<!-- Open links in a new tab unless they have the `` attribute -->
<head>
    <base target="_blank">
</head>

```{important} 
This guide has been (lightly) adapted from the UBC-Vancouver [MDS Install stack](https://ubc-mds.github.io/resources_pages/installation_instructions/) under a CC-BY-SA 4.0 license.
```

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