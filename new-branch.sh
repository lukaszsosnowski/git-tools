#!/bin/bash
NEW_BRANCH="$1"

if [ -z $2 ]
then
    REF_BRANCH="origin/master"
    REF_BRANCH_SHORT="master"
else
    REF_BRANCH="origin/$2"
    REF_BRANCH_SHORT="$2"
fi

git checkout -b "$NEW_BRANCH" "$REF_BRANCH"
git pull origin "$REF_BRANCH_SHORT"
