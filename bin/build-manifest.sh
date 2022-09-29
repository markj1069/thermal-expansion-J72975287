#! /usr/bin/env bash

# Build the MANIFEST file and store
# at the top level

echo "MANIFEST Stub. Replace with real code."

pandoc doc/manifest.mkd \
    --read=markdown --write=plain \
    --standalone --shift-heading-level-by=-1 \
    --output=MANIFEST
