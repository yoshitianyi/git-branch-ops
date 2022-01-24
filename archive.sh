#!/bin/bash

# Get the branch names from stdin
BRANCHES=`cat - | cut -f 2`

# Dump the diffs of the branches
for BRANCH in $BRANCHES
do
    echo "Processing $BRANCH..."
    git diff --no-prefix -U5 HEAD...$BRANCH > ${BRANCH//\//+}.patch
done
