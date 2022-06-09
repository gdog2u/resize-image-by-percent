# resize-image-by-percent
A [GIMP](https://gimp.org) script-fu script for use in the command line that allows for quickly resizing images by a certain percent. Written for GIMP v2.10. 
```scheme
(resize-image-by-percent "my-image.jpg" 25)
```

## Installation
1. Download the scm files: [https://github.com/gdog2u/resize-image-by-percent/archive/refs/head/master.zip](https://github.com/gdog2u/resize-image-by-percent/archive.zip)
2. Unzip and copy both .scm files to your GIMP scripts folder
    - e.g. `~/.config/GIMP/2.10/scripts/` or `%APPDATA%/GIMP/2.10/scripts/`

## Parameters
The script has just two simple parameters:
 1. `filepath`
    - `STRING` - The absolute, or relative, path to an image
 2. `percent`
    - `VALUE` - An integer, greater than 0, that respresents by what percentage to scale the image

## Examples
Scale an image down to 25% its original dimensions
```shell
gimp -i -b '(resize-image-by-percent "James-at-the-beach.jpg" 25)' -b '(gimp-quit 0)'
```

Increase an image by 50%
```shell
gimp -i -b '(resize-image-by-percent "in-the-garden.jpg" 150)' -b '(gimp-quit 0)'
```

Scale down an entire folder of images
```shell
#!/bin/bash

for FILE in pictures/*
do
    gimp -i -b "(resize-image-by-percent \"$FILE\" 33)" -b '(gimp-quit 0)'
done
```

## Contributions
I welcome any pull requests, and will consider them with respect.

## Credits
[@philcolbourn](https://github.com/philcolbourn) - Providing the basis for [split-filename-extension.scm](./split-filename-extension.scm)