#!/usr/bin/python3

import argparse
import datetime
import os
from subprocess import Popen, PIPE


def process_file(tldr_filename, manpage_filename):
    tldr_dir, tldr_file = os.path.split(tldr_filename)

    with open(tldr_filename) as inp:
        data = inp.readlines()

        # Extracting program name
        _, name = data[0].split(maxsplit=1)
        name = '-'.join(name.split())

        # Extracting description
        lineno = 2
        desc = data[lineno][2:]
        lineno += 1
        while data[lineno][0] == '>':
            desc += data[lineno][2:]
            lineno += 1

        # Extracting authors
        git = Popen(['git',
                     'log',
                     '--format=%aN',
                     tldr_file],
                    cwd=tldr_dir,
                    stdout=PIPE,
                    stderr=PIPE)

        out, err = git.communicate()
        if err:
            print(err)
        out = out.decode()
        authors = ', '.join(author for author in out.split('\n') if author)

        # Creating header
        data[:lineno] = ["% {}(0) manpages-tldr manuals\n".format(name),
                         "% {}\n".format(authors),
                         "% {}\n".format(datetime.datetime.now().date()),
                         "\n",
                         "# NAME\n",
                         "\n",
                         "{} - {}".format(name, desc),
                         "\n",
                         "# EXAMPLES\n"]

        # Cleaning
        for i, line in enumerate(data):
            if line[0] == '-':
                data[i] = line[2:]
            elif line[0] == '`':
                data[i] = '\t' + line.replace('`', '')

        # Calling pandoc to finish conversion
        pandoc = Popen(['pandoc',
                        '-s',
                        '-t',
                        'man',
                        '-o',
                        manpage_filename], stdin=PIPE)
        pandoc.communicate(input=''.join(data).encode())


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("tldr_file")
    parser.add_argument("manpage_file")
    args = parser.parse_args()
    process_file(args.tldr_file, args.manpage_file)
