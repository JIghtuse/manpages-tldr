% TAR(1) manpages-tldr manuals
% Romain Prieto, Boris Egorov
% 2014-02-02

# NAME

tar - Archiving utility. Optional compression with gzip / bzip.

# EXAMPLES

Create an archive from files.

    tar cf target.tar file1 file2 file3

Create a gzipped archive.

    tar cfz target.tar.gz file1 file2 file3

Extract an archive in a target folder.

    tar xf source.tar -C folder
