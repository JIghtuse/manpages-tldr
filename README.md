manpages-tldr
=============

Short, practical manpages for everyday usage

Description
-----------

This project aims to make fast-updated, practical and precise manpages with
**examples** for everyday usage. It's an idea based on similar projects, like
[bropages](http://bropages.org/) and [tldr](https://github.com/rprieto/tldr),
but written as part of real manpages (mostly converted from Markdown with
pandoc).

CONTRIBUTING
------------

Fork project, commit and push changes, send pull request.
Please try to follow
[etiquette](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
of good commit messages.

Example
-------

After typing `man tldr scp` you will see usual manpage (see `man tldr man` for
usage):

    SCP(1)                                                                  SCP(1)
    
    
    
    NAME
           scp  -  Copies  files  between hosts on a network.  Works over a secure
           connection (SSH).
    
    EXAMPLES
           Upload a file.
    
                  scp /local/file.txt 10.0.0.1:/remote/path/
    
           Upload and rename a file.
    
                  scp /local/file.txt 10.0.0.1:/remote/path/newname.txt
    
           Download a file.
    
                  scp 10.0.0.1:/remote/path/file.txt /local/folder
    
           Upload a directory.
    
                  scp -r /local/folder 10.0.0.1:/remote/path/
    
           Download a directory.
    
                  scp -r 10.0.0.1:/remote/path /local/folder
    
           Specify username on host.
    
                  scp /local/file.txt my_user@10.0.0.1:/remote/path
    
           Copy a file from one host to another.
    
                  scp 10.0.0.1:/remote/path/file.txt 20.0.0.2:/other/remote/path
    
    AUTHORS
           Romain Prieto, Alexander Jegtnes, Boris Egorov.
    
    
    
    manpages-tldr manuals             2014-02-02                            SCP(1)
