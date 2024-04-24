#!/usr/bin/bash

# path to the file
file_path="/c/Users/pc/OneDrive/Desktop/Cloud/practice/repo/mini-expenses-project/file.txt"

# using wc command to count number of lines
number_of_lines=`wc --lines < $file_path`

# using wc command to count number of words
number_of_words=`wc --word < $file_path`

# Displaying number of lines and number of words
echo "Number of lines: $number_of_lines"
echo "Number of words: $number_of_words"

cat file.txt | tr -cs '[:alpha:]' '\n' | tr 'A-Z' 'a-z' | sort | uniq -c
