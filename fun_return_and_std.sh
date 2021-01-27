#!/bin/bash


function get_latest_version(){
	#stream_num1>&stream_num2 syntax to transfer the stream
	#here stream 1 is stdout and 2 is other output stream
	echo "Info 1" 1>&2
	echo "Info 2" 1>&2	
	echo "Shell Script 2.O" 
}

function get_oldest_version(){
	echo "0.0.1" 
}

#here, $(...) gets the output from function
#which is issued by echo

#ignore n the second output stream
# n>/dev/null


NEWEST=$(get_latest_version 2>/dev/null)
OLDEST=$(get_oldest_version 2>/dev/null)


echo "latest version of $1  is $NEWEST and oldest is $OLDEST"





