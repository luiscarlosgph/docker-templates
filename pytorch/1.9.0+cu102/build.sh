#!/bin/bash

# Get id of the running user
echo `id -u` > files/uid.txt

# Build image for that user to run X11 applications
docker build -t $1 .
