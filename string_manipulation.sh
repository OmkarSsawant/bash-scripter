#!/bin/bash

#replaces 's' with 0 and i with 1 and more respectively.
echo "sample string manipulation" | tr 'si' '01' 

#s for squeeze
echo "this           spaced                   string" | tr -s '[:space:]' ' '

#d for delete
echo "OmkarSsawant" | tr -d '[:upper:]'

#c for invert
echo "Omk!a#@rSsaw*&^ant" | tr -d '[:alnum:]' #deletes the non-alpha_numeric chars







