#!/usr/bin/env bash
echo "Initializing oneclick"
ONECLICK_DIR=~/.oneclick

if [ -d "$ONECLICK_DIR" ]
then
    echo "$ONECLICK_DIR directory  exists!"
    cd $ONECLICK_DIR
    git pull
else
    mkdir -p $ONECLICK_DIR
    git clone git@github.intuit.com:PTG/oneclick.git $ONECLICK_DIR
    echo "Successfully cloned"
fi
