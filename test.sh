#!/bin/sh

FILENAME=$file.txt

cat $file.txt ilename |  sed "s/_/new/g" | sed "s/$word/_/g" | tr -c -d _ |wc -c
