#!/bin/bash

# i for case-Insensitive
# r for recursive
# c for search-Count
# . is current dir we can spechify any /home/any/any
function _searchFile(){
	cd 
	grep -irn . "test.kt" 
	
}

echo "The Searches are : "|lolcat

echo "$(_searchFile)"
