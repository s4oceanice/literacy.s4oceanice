#!/bin/bash
cd .venv
source Scripts/activate
cd ..
pip install jupyter-book
jupyter-book build ./literacy.oceanice
cp -r literacy.oceanice/_build/html/* docs
cat literacy.oceanice/corrections.css >> docs/_static/basic.css
cd docs
touch .nojekyll
sed -i "/<\/head>/i <link rel="stylesheet" type="text/css" href="_static/corrections.css" />" intro.html
cd ..
# Git add, commit and push
# The content of the folder /docs will be published automatically
echo "Enter a commit message:"
read commit_message
git add .
git commit -m "$commit_message"
git push