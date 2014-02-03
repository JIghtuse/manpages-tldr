#!/bin/bash

# Takes page by name, downloads it to /tmp and opens in man
page=$1.tldr
page_path=https://github.com/JIghtuse/manpages-tldr/raw/master/pages/$page

pushd /tmp && wget $page_path && popd && man /tmp/$page
