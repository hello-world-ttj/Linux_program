#!/bin/bash
cd etc
echo Program to Rename files
echo "List of files in the directory"
for f in *.c
do
echo "$f"
done
echo
for f in *.c
do
mv "$f" "${f%.*}.cpp"
done
echo
echo The renamed files are
for f in *.cpp
do
echo "$f"
done
