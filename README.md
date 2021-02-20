manpages-tldr
=============

Short, practical manpages for everyday usage

Description
-----------

This project aims to make fast-updated, practical and precise manpages with
**examples** for everyday usage. It's an idea based on similar projects, like
[bropages](http://bropages.org/) and [tldr](https://github.com/rprieto/tldr),
but written in format of real manpages (mostly converted from Markdown with
pandoc).

Warning
-------

manpages-tldr neither tries to replace original manpages nor compete with them.
You **must** read real manpages. Use manpages-tldr only if you really have no
time. If you note that some real manpage needs example, try to add it there.


Installation for current user
-----------------------------

To install manpages to your home directory, run command like this:

    MAN_DIR=$HOME/.local/share/man make install

Manpages will be installed to `$HOME/.local/share/man/mant`. Now you need to tell `man` command to look for manpages there. To do this, set environment variable `MANPATH`. If you need, you can do it in `$HOME/.bashrc` to avoid repeatedly setting this variable for all new terminal sessions.

    export MANPATH=$HOME/.local/share/man:$MANPATH

Now you can use tldr manpages like this:

    man -s tldr scp

You can add alias to your `.bashrc` file for easier usage:

    echo "alias tldr='man -s tldr'" >> ~/.bashrc

After that, you will be able to use manpages-tldr like that:

    tldr scp

System-wide installation
------------------------

Run `make install` as root. Manpages will be installed to
`/usr/local/share/man/mant`. Now you can use them like this:

    man -s tldr scp

You can add alias to your `.bashrc` file for easier usage:

    echo "alias tldr='man -s tldr'" >> ~/.bashrc

After that, you will be able to use manpages-tldr like that:

    tldr scp

You can also use [tools/thinpage.sh](tools/thinpage.sh) script to download and
read some page without installation:

    ./tools/thinpage.sh scp

This command will download page from github to /tmp directory and open it in
man pages reader.

CONTRIBUTING
------------

Fork project, commit and push changes, send pull request.
Please try to follow
[etiquette](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
of good commit messages.

Example
-------

After typing `man -s tldr scp` you will see usual manpage (see `man -s tldr man`
for usage):

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
