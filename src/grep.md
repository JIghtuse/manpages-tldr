% GREP(1) manpages-tldr manuals
% Romain Prieto, Camilla Krag Jensen, Boris Egorov
% 2014-02-02

# NAME

grep - Matches patterns in input text. Supports simple patterns and regular
expressions.

# EXAMPLES

Search for an exact string.
 
    grep something file_path

Search recursively in current directory for an exact string.

    grep -r something .

Use a regex.

    grep -e ^regex$ file_path

See 3 lines of context.

    grep -C 3 something file_path

Print the number of matches.

    grep -c something file_path

Use the standard input instead of a file.

    cat file_path | grep something
