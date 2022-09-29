#! /usr/bin/env bash

# Process the license file into a plain text file
# at the top level.

pandoc $1 \
    --read=markdown --write=plain \
    --standalone --shift-heading-level-by=-1 \
    --output=LICENSE
