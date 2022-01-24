#!/bin/bash

# Get the branch names from stdin
ARCDIR=.archives
mkdir -p $ARCDIR
BRANCHES=`tee $ARCDIR/branches.tsv | cut -f 2`

# Dump the diffs of the branches
for BRANCH in $BRANCHES
do
    echo "Processing $BRANCH..."
    git diff --no-prefix -U5 HEAD...$BRANCH > $ARCDIR/${BRANCH//\//+}.patch
done

# Commit the patch files
git add $ARCDIR
git commit -m "Archive stale branch changes"
