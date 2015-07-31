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

IMAGE29_1X="$IMAGEWITHOUTEXT-29.png"
IMAGE29_2X="$IMAGEWITHOUTEXT-29@2x.png"
IMAGE29_3X="$IMAGEWITHOUTEXT-29@3x.png"
IMAGE40_1X="$IMAGEWITHOUTEXT-40.png"
IMAGE40_2X="$IMAGEWITHOUTEXT-40@2x.png"
IMAGE40_3X="$IMAGEWITHOUTEXT-40@3x.png"
IMAGE60_2X="$IMAGEWITHOUTEXT-60@2x.png"
IMAGE60_3X="$IMAGEWITHOUTEXT-60@3x.png"
IMAGE76_1X="$IMAGEWITHOUTEXT-76.png"
IMAGE76_2X="$IMAGEWITHOUTEXT-76@2x.png"
IMAGE1024="$IMAGEWITHOUTEXT-512@2x.png"

mkdir icons > /dev/null 2>&1
cp $IMAGE icons/$IMAGE29_1X
cp $IMAGE icons/$IMAGE29_2X
cp $IMAGE icons/$IMAGE29_3X
cp $IMAGE icons/$IMAGE40_1X
cp $IMAGE icons/$IMAGE40_2X
cp $IMAGE icons/$IMAGE40_3X
cp $IMAGE icons/$IMAGE60_2X
cp $IMAGE icons/$IMAGE60_3X
cp $IMAGE icons/$IMAGE76_1X
cp $IMAGE icons/$IMAGE76_2X
cp $IMAGE icons/$IMAGE1024

sips -Z 29  icons/$IMAGE29_1X > /dev/null 2>&1
sips -Z 58  icons/$IMAGE29_2X > /dev/null 2>&1
sips -Z 87  icons/$IMAGE29_3X > /dev/null 2>&1
sips -Z 40  icons/$IMAGE40_1X > /dev/null 2>&1
sips -Z 80  icons/$IMAGE40_2X > /dev/null 2>&1
sips -Z 120 icons/$IMAGE40_3X > /dev/null 2>&1
sips -Z 120 icons/$IMAGE60_2X > /dev/null 2>&1
sips -Z 180 icons/$IMAGE60_3X > /dev/null 2>&1
sips -Z 76  icons/$IMAGE76_1X > /dev/null 2>&1
sips -Z 152 icons/$IMAGE76_2X > /dev/null 2>&1

echo "Resizing completed!"
