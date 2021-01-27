#!/bin/bash

echo "creating 2 two file for sample"

	echo "THis is Content Of File 1" > file1.txt
	echo "THis is Content of File 2" > file2.txt

#here,
# c - create 
# v - prints op files in verbose
# x - extract
# z - compress
# f - file

echo "ziping without compressing it "

	tar -cf sample_no_compress.tar file1.txt file2.txt

echo "ziping  with compressing" 

	tar -czf sample_compressed.tar.gz file1.txt file2.txt

echo "Here Files with Tars"| ls 	

echo "unziping it" 
	tar -xvf sample_no_compress.tar
	tar -xvf sample_compressed.tar.gz

	

