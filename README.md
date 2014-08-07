Resize Tools
============

### resize.py
Resizes all `.png` images in the given directory (if no directory is given, the current is used), which are ending with @2x by half.

#### Usage
`resize.py my/directory/with/files`

---

### resize_icon.sh
Tiny commandline tool to resize an image for use with iOS applications.
It resizes the supplied image into a 120x120 (60@2x), 80x80 (40@2x), 58x58 (29@2x) and 1024x1024 (512@2x) image.

#### Usage
`resize_icon.sh path_to_image.png`
