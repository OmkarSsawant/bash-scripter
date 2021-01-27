
#! bin/bash


#if [ $1 == "-h" ]:
##	echo "you can specify interval at last at you want to update board";
#	exit;		
		

free --giga -h;


while sleep $1;
	do
		clear;
		echo "=================================================================================";
		free --giga -h;
		echo "=================================================================================";
	done
