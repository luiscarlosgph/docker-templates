#!/bin/bash

IMAGE_NAME=`basename "$PWD"`

FNAME='tarball_files.txt'
DNAME='files'
touch $FNAME

# Add Dockerfile
echo 'Dockerfile' >> $FNAME

# Add all the files in the folder 'files'
for entry in "$DNAME"/*
do
  echo "$entry" >> $FNAME
done

# Create tarball
tar czf $IMAGE_NAME.tar.gz -T $FNAME

# Cleanup temporary file
rm -f $FNAME
