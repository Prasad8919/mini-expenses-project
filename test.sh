#!/bin/sh

FILENAME=$file.txt

cat $file.txt ilename |  sed "s/_/new/g" | sed "s/$word/_/g" | tr -c -d _ |wc -c


echo "Enter the term"

read term

result=`grep -o $term file.txt | wc -l`

echo $result