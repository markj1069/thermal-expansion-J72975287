#! /usr/bin/env bash

# Pass the Exercise file through the m4 macro
# and then through pandoc to create PDF.

PICTMP="/tmp/PICUP"

if [[ ! -d $PICTMP ]]; then
    mkdir $PICTMP
fi

PICM4=$(mktemp --tmpdir=$PICTMP -t PICM4XXXX )


m4 lib/exercise.m4 doc/exercise.mkd >$PICM4

pandoc $PICM4 \
    --read=markdown --write=pdf \
    --citeproc --bibliography=/mnt/d/db/Zotero/My-Library.yaml \
     --metadata=link-citations \    
    --standalone --shift-heading-level-by=-1 \
    --output=doc/exercise.pdf
