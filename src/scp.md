% SCP(1) manpages-tldr manuals
% Romain Prieto, Alexander Jegtnes, Boris Egorov
% 2014-02-02

# NAME

scp - Copies files between hosts on a network. Works over a secure connection
(SSH).

# EXAMPLES

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
