#!/bin/bash

# Fetch the remote repos
git fetch

# List the no-merged remote branches
BRANCHES=`git branch -r --no-merged | awk '{print($1)}'`

# List the time-sorted branches with their time, id and author
# Note: The sort is done by the local time
for BRANCH in $BRANCHES
do
    echo "Processing $BRANCH..." >&2
    echo -e `git show --format="%ci %h %an" $BRANCH | head -n 1` \\t$BRANCH
done | sort
