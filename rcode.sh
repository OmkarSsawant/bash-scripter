#!/bin/bash

P_PATH=""

function get_flutter_project_path(){
	PRO=$1
	echo "Finding $PRO Please wait ..." 1>&2
	PRO_PATH=$(find /home/omkar/Documents/Projects -type d -name $PRO | grep -v "example/$PRO$" )
	echo "$PRO_PATH"
}
#here, PojectPath(PP)

function open_vscode(){
	PP=$1
	code $PP
}

function run_flutter(){
	read START
	
	if [ $START == "y" ];
	then
		
		echo "Starting Flutter @ $(pwd)"
		DEVICE_RES=$(flutter devices | head -n 1)
	       	if [ $DEVICE_RES != "No devices detected." ];
		then
			gnome-terminal --working-directory=$P_PATH -e "flutter run"	
			return 0
		else
			return 1
		fi	
	fi	

}

CACHE_PATH=/home/omkar/Documents/project_cache.txt

function cache(){
	echo $1 > $CACHE_PATH
}


set -e

HAS_OPENED_RECENT=0



	#if recent path is not empty
FLAG=$1	
if [ $FLAG == "-rec" ];
then 
		REC_PATH=$(cat $CACHE_PATH)
		if [ $REC_PATH ];
		then
			echo "Opening Recent Project ... $REC_PATH "
			open_vscode $REC_PATH
			cd $REC_PATH
			P_PATH=$REC_PATH
			HAS_OPENED_RECENT=1
		else
			echo "No Recent Path found"
			exit
		fi	
elif [ $FLAG == "-d" ];
then
	echo "Opening Directory"
	cache $2
	open_vscode $2
	cd $2
	P_PATH=$2
	HAS_OPENED_RECENT=1	
fi

if [ $HAS_OPENED_RECENT -eq 0 ];
then
	#no recent project is opened
	echo "Searching project ... ( it may take some time for first time )"
	echo "Next time for opening same project just enter -rec flag : eg : ./rcode -rec"
	echo "You can also specify directory with -d flag : eg : ./rcode -d path_to_dir"	
	P_PATH="$(get_flutter_project_path $1)"
	cache $P_PATH
	open_vscode $P_PATH
	cd $P_PATH
fi

set -E

echo "Do you Want to run flutter  ?  [y/n]"
run_flutter $P_PATH || echo "Please Connect to Device First"
	

echo "Found Project Path $P_PATH"


