#!/bin/bash

# Get the branch names from stdin
BRANCHES=`cut -f 2`

# Merge back the branches into the default branch by 'ours' strategy to discard all the changes
DEFAULT_BRANCH=master # hard-coded
git checkout $DEFAULT_BRANCH
for BRANCH in $BRANCHES
do
    echo "Processing $BRANCH..."
    git merge $BRANCH -s ours -m "Discard branch '$BRANCH'"
done
