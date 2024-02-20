#!/bin/bash

# To work for deployment on GitHub Pages the following should be set:
# on the repository > Settings > Pages the Source of Build Deployment selected should be:
#    main / docs

cd .venv
source Scripts/activate
cd ..
pip install jupyter-book
jupyter-book build ./literacy.oceanice
mkdir docs
cp -r literacy.oceanice/_build/html/* docs
cat literacy.oceanice/corrections.css >> docs/_static/basic.css
cd docs
touch .nojekyll
sed -i "/<\/head>/i <link rel="stylesheet" type="text/css" href="_static/corrections.css" />" intro.html
cd ..
echo "Enter a commit message:"
read commit_message
git add .
git commit -m "$commit_message"
git push
rm -r literacy.oceanice/_build
rm -r docs
