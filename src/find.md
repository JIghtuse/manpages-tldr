% FIND(1) manpages-tldr manuals
% Pranav Raja, Romain Prieto, Boris Egorov
% 2014-02-02

# NAME

find - Find files under the given directory tree, recursively

# EXAMPLES

Find files by extension.

    find root_path -name '*.py'

Run a command for each file. Use {} within the command to access the filename..

    find root_path -name '*.py' -exec wc -l {} \;
    find root_path -name '*.py' -exec rm {} \;

Find files modified since a certain time.

    find root_path -name '*.py' -mtime -1d
