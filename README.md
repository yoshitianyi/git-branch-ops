# Git Branch Archiving Operations

## How to use

1. Get the no-merged branch list by `bash list-no-merged.sh > a.tsv`
2. Manually edit and select the target branches in the generated `a.tsv` file
3. If you want to merge back the target branches by 'ours' strategy, run `bash discard.sh < a.tsv`
4. If you want to generate the diffs of the target branches and commit them, run `bash archive.sh < a.tsv`
5. If you want to delete the target branches from the remote, run `bash delete.sh < a.tsv`
