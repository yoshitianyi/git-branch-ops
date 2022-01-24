#!/bin/bash

# Get the branch names from stdin
BRANCHES=`cut -f 2`

# Delete the branches on the remote repo
REMOTE=origin # hard-coded
for BRANCH in $BRANCHES
do
    echo "Processing $BRANCH..."
    BRANCH_IN_REMOTE=$(echo $BRANCH | sed "s/$REMOTE\///g")
    git push $REMOTE --delete $BRANCH_IN_REMOTE
done
