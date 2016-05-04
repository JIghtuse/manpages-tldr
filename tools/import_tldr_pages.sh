#!/bin/bash

tldr_pages="../tldr_pages"

for file in $tldr_pages/common/*.md $tldr_pages/linux/*.md; do
    filename=$(basename "$file")
    filename=${filename%%.md}.tldr
    ./tools/tldr_page_to_manpage.py "$file" "pages/$filename"
done
