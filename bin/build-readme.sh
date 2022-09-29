#! /usr/bin/env bash

# Process the README file into a GitHub-Flavored Markdown
# file at the top level.

pandoc doc/readme.mkd \
    --read=markdown --write=gfm \
    --standalone --shift-heading-level-by=-1 \
    --output=README.md
