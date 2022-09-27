#!/bin/bash

echo `id -u` files/uid.txt
docker build -t pycharm:latest .
