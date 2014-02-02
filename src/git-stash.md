% GIT-STASH(1) manpages-tldr manuals
% Romain Prieto, Boris Egorov
% 2014-02-02

# NAME

git stash - stash local Git changes in a temporary area

# EXAMPLES

Stash current changes (except new files).

    git stash optional_stash_name

Include new files in the stash (leaves the index completely clean).

    git stash -u optional_stash_name

List all stashes.

    git stash list

Re-apply the latest stash.

    git stash pop

Re-apply a stash by name.

    git stash apply stash_name
