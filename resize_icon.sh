#!/bin/bash

if [ -z "$1" ]
then
    echo "Please specify an image file"
    exit
fi

if [[ "$1" != *.png ]]
then
    echo "Please specify a .png file"
    exit
fi

IMAGE="$1"
IMAGEWITHOUTEXT=${IMAGE:0:${#IMAGE}-4}

IMAGE29="$IMAGEWITHOUTEXT-29@2x.png"
IMAGE40="$IMAGEWITHOUTEXT-40@2x.png"
IMAGE60="$IMAGEWITHOUTEXT-60@2x.png"
IMAGE1024="$IMAGEWITHOUTEXT-512@2x.png"

mkdir icons > /dev/null 2>&1
cp $IMAGE icons/$IMAGE29
cp $IMAGE icons/$IMAGE40
cp $IMAGE icons/$IMAGE60
cp $IMAGE icons/$IMAGE1024

sips -Z 58 icons/$IMAGE29 > /dev/null 2>&1
sips -Z 80 icons/$IMAGE40 > /dev/null 2>&1
sips -Z 120 icons/$IMAGE60 > /dev/null 2>&1
sips -Z 1024 icons/$IMAGE1024 > /dev/null 2>&1

echo "Resizing completed!"
