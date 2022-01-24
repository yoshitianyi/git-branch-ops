# Git Branch Archiving Operations

## How to use

1. Get the no-merged branch list by `bash list-no-merged.sh > 1`
2. Manually edit and select the target branches in the generated `1` file
3. If you want to merge back the target branches by 'ours' strategy, run `bash discard.sh < 1`
4. If you want to generate the patch files of the target branches, run `bash archive.sh < 1`
5. If you want to delete the target branches from the remote, run `bash delete.sh < 1`
