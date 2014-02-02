% RSYNC(1) manpages-tldr manuals
% andrewboerema, John Wu, Boris Egorov
% 2014-02-02

# NAME

rsync - Transfer files either to or from a remote host.  Does not allow
transfer between two remote hosts.

# EXAMPLES

Transfer file from local to remote host.

    rsync path_to_file remote_host_name:remote_host_location

Transfer file from remote host to local.

    rsync remote_host_name:remote_file_location local_file_location

Transfer all \*.js files in current directory to host 'devbox' as user 'mike'.

    rsync *.js mike@devbox:~/projects/cakeStore/styles/

Transfer a directory and all its children from a remote to local.

    rsync -r mike@devbox:~/projects/cakeStore /Users/mike/devProjects/
