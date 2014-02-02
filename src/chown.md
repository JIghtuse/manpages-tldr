% CHOWN(1) manpages-tldr manuals
% Romain Prieto, Boris Egorov
% 2014-02-02

# NAME

chown - change the owning user/group of the specified files

Change the user of a file.

    chown user path/to/file

Change the user and group of a file.
 
    chown user:group path/to/file

Recursively change the owner of an entire folder.

    chown -R user path/to/folder

Change the owner of a symbolic link.
 
    chown -h user path/to/symlink
