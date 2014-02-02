% SED(1) manpages-tldr manuals
% Pranav Raja, Boris Egorov
% 2014-02-02

# NAME

sed - Run replacements based on regular expressions

# EXAMPLES

Replace all occurrences of a string in a file, and print the result.

    sed 's/find/replace/g' filename

Replace all occurrences of a string in a file, and overwrite the file contents.

    sed -i '' 's/find/replace/g' filename

Replace all occurrences of an extended regular expression in a file.

    sed -E 's/regex/replace/g' filename
