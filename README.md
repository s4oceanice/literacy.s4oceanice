# Jupyter Book: A Collaborative Data Storytelling Tool for the OCEAN:ICE project

# What is Jupyter Book?
- Jupyter Book is a documentation tool designed for collaborative content creation
- It facilitates the division of work among team members
- Provides a structured framework for sharing knowledge
- Generates an interactive website for your project
- Supports downloadable .ipynb files and direct execution through Google Colab

# Why Jupyter Book for OCEAN:ICE?

# Structure and Organization
OceanICE is a complex project with multiple work packages. 
Jupyter Book offers a structured framework for organizing our content, making it easier to manage the documentation across different work packages.

# Collaborative Authoring
Our project involves multiple contributors and collaborators working together. 
Jupyter Book supports collaborative content creation, allowing team members to efficiently contribute and edit documentation.

# Integration of Different Content Types
OceanICE encompasses various types of content, including data, research findings, and more. Jupyter Book seamlessly integrates a range of content formats, such as Jupyter Notebooks, Markdown, and more, enabling us to present diverse information cohesively.

# Accessibility and Sharing
We want to make our research and findings accessible to a wider audience. Jupyter Book allows us to publish interactive and accessible documentation that can be easily shared with the broader scientific community.

# Customization and Flexibility
OceanICE has unique documentation requirements. Jupyter Book's customization options provide the flexibility needed to tailor our documentation to the specific needs of our project.

# Python as a Universal Language
Python is widely recognized as a universal language in the scientific community. 
It's the preferred choice for data analysis, visualization, and scientific computing.

# How to create OCEAN:ICE Book?

# Every chapter is a file.
Jupyter Book is versatile in terms of input content
It can incorporate different types of content:
- Jupyter Notebooks	
	Jupyter Book seamlessly integrates Jupyter Notebooks
	Ideal for incorporating code, visualizations, and narrative text
- Markdown
	Provides flexibility for creating and structuring content

# The folders structure of the book
```
literacy.OCEAN:ICE/
├── _config.yml
├── _toc.yml
├── intro.md
├── book-assets/
│    └── logo.png
├── chapters/
│   ├── chapter1/
│   │ 	├──chapter1.md
│   │ 	└── chapter1-assets/
│   │  	     └── image1.png
│   └── chapter2/
│       ├── chapter2.ipynb
│       └── chapter2-assets/
├── references.bib
└── requirements.txt
```

# Root Directory and Configuration Files

- The root directory contains project-wide configuration files.
- `_config.yml` stores book-level settings.
- `_toc.yml` defines the table of contents structure.

# Introduction and Book Images

- `intro.md` contains introductory content.
- `book-assets/` directory stores book-wide assets like the logo.

# Pages and Subfolders (Chapters)

- `chapters/` directory is for book content.
- Subfolders represent chapters (e.g., `chapter1/` and `chapter2/`).

# Chapter Content and Images

- Each chapter subfolder contains content and resources.
- For example, `chapter1/` has `chapter1.md` for content.
- `chapter1-assets/` contains chapter-specific assets.

# References and Requirements

- `references.bib` stores bibliographic references.
- `requirements.txt` lists project dependencies.
- This directory structure helps organize and manage the book's content effectively.

# The Structure Will be Hosted on a Shared GitHub Repository

- Our Jupyter Book project structure will be hosted on a shared GitHub repository.
- This collaborative approach allows team members to access and contribute to the documentation.
- GitHub provides version control, making it easy to track changes and collaborate effectively.
- This shared repository serves as a central hub for our project's documentation and resources.

# Automatic Regeneration After Approved Changes

- We have implemented an automated system for our Jupyter Book project.
- After each approved change or update, the book will be automatically regenerated.
- This ensures that the documentation is always up-to-date and reflects the latest contributions.
- The regeneration process maintains the book's accuracy and accessibility for all users.

# Useful Links

- [Jupyter Book Documentation](https://jupyterbook.org/): The official documentation for Jupyter Book, where you can find detailed guides and resources.
- [GitHub Repository](https://github.com/s4oceanice/): The shared GitHub repository where the Jupyter Book project is hosted. Access and contribute to the documentation here.
- [Google Colab](https://colab.research.google.com/): A cloud-based platform for executing Jupyter Notebooks directly in your web browser.
- [Markdown Guide](https://www.markdownguide.org/): A comprehensive resource for learning Markdown, a common format for content creation.
- [Jupyter Notebook Documentation](https://jupyter-notebook.readthedocs.io/en/stable/): The official documentation for Jupyter Notebook, a powerful tool for interactive computing.

