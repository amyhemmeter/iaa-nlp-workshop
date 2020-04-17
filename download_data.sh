#!/bin/bash

URL=http://www.fit.vutbr.cz/~imikolov/rnnlm/simple-examples.tgz
TRAINFILE=train.txt
DEVFILE=dev.txt
TESTFILE=test.txt

mkdir -p data
cd data

if [ ! -e $TRAINFILE -o ! -e $DEVFILE -o ! -e $TESTFILE ]; then
    wget --continue $URL
    tar -xzf simple-examples.tgz
    mv simple-examples/data/ptb.train.txt $TRAINFILE
    mv simple-examples/data/ptb.valid.txt $DEVFILE
    mv simple-examples/data/ptb.test.txt $TESTFILE
    rm -rf simple-examples.tgz
    rm -rf simple-examples
fi
