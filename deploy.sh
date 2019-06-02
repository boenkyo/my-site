#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build site
hugo

# Add and commit changes
cd ../hinoku.github.io
git add .

msg="rebuild site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push

cd ../my-site