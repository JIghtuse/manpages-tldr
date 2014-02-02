% SSH(1) manpages-tldr manuals
% Romain Prieto, Ricardo Pascua Jr, Boris Egorov
% 2014-02-02

# NAME

SSH - Secure Shell is a protocol used to securely log onto remote systems. It
can be used for logging or executing commands on a remote server.

# EXAMPLES

Connecting to a remote server.

    ssh username@remote_host

Connecting to a remote server with specific port.

    ssh username@remote_host -P 2222

Ssh tunneling.

    ssh -D 9999 -C username@remote_host
