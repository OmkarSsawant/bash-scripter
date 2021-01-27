#!/bin/bash

#replaces every visionDev word to OmkarSawant
cat testf.txt | sed 's/VisionDev/OmkarSawant/g'

#alernatively you can use # if your pattern contains '/'
cat testf.txt | sed 's#VisionDev Here#OmkarHere#g`'

