% SVN(1) manpages-tldr manuals
% Benedikt Ritter, Boris Egorov
% 2014-02-02

# NAME

svn - Subversion command line client tool

# EXAMPLES

Check out a working copy from a repository.

    svn co url/to/repository

Bring changes from the repository into the working copy.

    svn up

Put files and directories under version control, scheduling them for addition to
repository. They will be added in next commit..

    svn add PATH...

Send changes from your working copy to the repository.

`svn ci -m commit log message [PATH...]`     

Show detailed help.

    svn help
