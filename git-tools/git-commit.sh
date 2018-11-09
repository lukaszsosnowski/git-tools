#!/bin/bash
branch=$(git rev-parse --abbrev-ref HEAD)
git add .

MESSAGE="$@"

if [ $# -eq 0 ]
then
    git commit -m "$branch"
else
    git commit -m "$branch $MESSAGE"
fi

git push origin $branch
