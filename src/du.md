% DU(1) manpages-tldr manuals
% Shrayas Rajagopal, Boris Egorov
% 2014-02-02

# NAME

du - Estimate file space usage

# EXAMPLES

Get file sizes of directory's content.

    du file/directory

Get total size in human readable form.

    du -sh file/directory

Get recursively, individual file/folder sizes in human readable form.

    du -ah directory

Get file sizes till a specified depth.

    du --max-depth=1
