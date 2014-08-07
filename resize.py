#!/usr/bin/python

import os,sys
from PIL import Image

directory = '.'

if len(sys.argv) > 1:
    directory = sys.argv[1]

files = [f for f in os.listdir(directory)]
for f in files:
    if f.endswith('.png'):
        infile = directory + '/' + f
        outfile = directory + '/' + f.replace('@2x.png', '.png')
        if infile != outfile:
            try:
                image = Image.open(infile)
                
                size = image.size
                width = size[0] / 2
                height = size[1] / 2
                newSize = width, height
                
                image.thumbnail(newSize, Image.ANTIALIAS)
                image.save(outfile, 'PNG')
            except IOError:
                print 'Couldn\'t resize image ', infile
