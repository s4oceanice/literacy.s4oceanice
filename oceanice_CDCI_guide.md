
# OCEAN ICE CI/CD Guide

To get started, you need to clone the repository from GitHub, which is located at the following address:

[https://github.com/s4oceanice/literacy.s4oceanice](https://github.com/s4oceanice/literacy.s4oceanice)

You can clone using the GitHub Desktop application or from the terminal.

### Cloning with GitHub Desktop:

From the repository page, press the green button
> <> Code

Select

> Open with GitHub Desktop.

This will open GitHub Desktop with which you can clone the repository locally.

### Cloning from the terminal:

If you have Git installed, you can clone the repository using the following command:

> git clone https://github.com/s4oceanice/literacy.s4oceanice.git

## Repository Structure

Locally, you will now have a folder structured as follows:

```
LITERACY.S4OCEANICE
├──.github/workflows
│
├──literacy.oceanice/
│  ├── _config.yml
│  ├── _toc.yml
│  ├── intro.md
│  ├── book-assets/
│  │    └── logo.png
│  ├── chapters/
│  │   ├── chapter1/
│  │   │    ├──chapter1.md
│  │   │    └── chapter1-assets/
│  │   │         └── image1.png
│  │   ├── chapter2/
│  │   |    ├── chapter2.ipynb
│  │   |    └── chapter2-assets/
│  |
│  ├── references.bib
│  └── requirements.txt
│
├──.gitignore
├──README.md
├──requirements.txt
...
```
The .github/workflows folder contains the .yml files necessary to activate and run Github Actions.
The literacy.oceanice folder contains the actual content of the Jupyter Book.

## Testing the Jupyter Book locally
To see the effect of changes made to the files locally, you will need to:

1. Create a virtual environment for Python:

    In Visual Studio Code, press Ctrl + Shift + P and select

    > Python: Create Environment...

    then select 
    
    > Venv

    Select the Python interpreter, then check 
    
    > requirements.txt

    and confirm.

2. Build the book:

    From the terminal, run:

    > jupyter-book build ./literacy.oceanice

    This will create a /_build folder inside literacy.oceanice/

3. Launch the Jupyter Book locally:

    If you haven't already, install the Visual Studio Code extension called Live Server.

    Select the index.html file inside literacy.oceanice/_build/html/.

    Press Go Live in the lower right corner of the VSC screen.

    This will open the Jupyter Book in your browser.

## CI/CD with Github Actions

The OCEAN ICE Jupyter Book is published at the following addresses:

- [https://s4oceanice.github.io/literacy.s4oceanice](https://s4oceanice.github.io/literacy.s4oceanice) (branch 'test')
- [https://literacy.s4oceanice.eu/](https://literacy.s4oceanice.eu/) (branch 'main')

### Deploy to GitHub Pages

Once you have made changes to the files,
which you want to see reflected on [https://s4oceanice.github.io/literacy.s4oceanice](https://s4oceanice.github.io/literacy.s4oceanice), you can activate the automatic deploy by running the following commands from the terminal:

1. > git checkout test

    to select the 'test' branch.

2. > git add .

    to add the changes to the staging area.

3. > git commit -m 'commit message'

    to create a commit containing your changes.
    The commit message will allow you to track changes and is mandatory.

4. > git push -u origin test

This command will send your changes to the online repository and activate the automatic deploy on GitHub's hosting service, Pages.

You can now check and follow the workflow in the Actions section of the online repository:

[https://github.com/s4oceanice/literacy.s4oceanice/actions](https://github.com/s4oceanice/literacy.s4oceanice/actions)

### Deploy to literacy.s4oceanice.eu

To publish the changes to literacy.s4oceanice.eu you will need to create a Pull Request on GitHub

The changes must have been submitted (git add, git commit, git push) to a branch, which can be 'test' or others created specifically.

From [https://github.com/s4oceanice/literacy.s4oceanice](https://github.com/s4oceanice/literacy.s4oceanice), you will need to select the branch where you submitted the changes, in our example 'test'.
(By default, the branch selected when opening the online repository is 'main')

Once the branch is selected, you will need to press

> Contribute

then

> Open pull request

> Create pull request

If you have the necessary credentials, you can merge the pull request by pressing

> merge pull request

and

> Confirm merge

At this point, once the pull request is accepted, the GitHub Actions workflow will be automatically triggered, which will deploy to literacy.s4oceanice.eu


#### Notes:

The Google Colabs linked in the chapters are not automatically updated.
If you make changes to the code in the .ipynb files, you will need to manually modify the Colabs on the s4oceanice@gmail.com Drive.