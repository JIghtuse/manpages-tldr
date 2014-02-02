% PACMAN(1) manpages-tldr manuals
% Romain Prieto, Boris Egorov
% 2014-02-02

# NAME

pacman - Arch Linux package manager utility

# EXAMPLES

Synchronize and update all packages.

    pacman -Syyu
 
Install a new package.

    pacman -S package-name

Remove a package and its dependencies.

    pacman -Rs package-name

Search the package database for a keyword.

    pacman -Ss icon theme

List installed packages and versions.

    pacman -Q
