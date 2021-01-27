#!/bin/sh

  #BASCICS
#VARIABLE INPUT AND UNSET
#VAR="YOUR NAME IS"
#echo "Enter Your name :"
#read NAME
#NAME="HACKED"
#echo "$VAR $NAM"
#unset NAME VAR

# SPECIAL CHARACTERS
#FILE_NAME=$0
#ARG_1=$1
#ARG_2=$2
#...ARG_N=$N
#ARG_LEN=$#
#DOUBLE_QUOTED_ARGS=$*
#INDIVIDUAL_DOUBLE_QUOTED=$@
#EXIT_STATUS_LAST_CMD=$?
#PROCESS_NUM_CUR_SHELL=$$


#echo "FILE_NAME : $FILE_NAME"
#echo "ARG_1 : $ARG_1"
#echo "ARG_2 : $ARG_2"
#echo "ARG_LEN : $ARG_LEN"
#echo "DOUBLE_QUOTED_ARGS= $DOUBLE_QUOTED_ARGS"
#echo "INDIVIDUAL_DOUBLE_QUOTED : $INDIVIDUAL_DOUBLE_QUOTED"
#echo "EXIT_STATUS_LAST_CMD : $EXIT_STATUS_LAST_CMD"
#echo "PROCESS_NUM_CUR_SHELL : $PROCESS_NUM_CUR_SHELL"

#   FOR LOOP

#for ARG in $*
#do
#	echo "$ARG"
#done

#for ARG in $@
#do
#	echo "$ARG"
#done

#for var in 0 1 2 3 4 5 6 7 8 9
#do
#	echo "$var"
#done

#WHILE LOOP

#a=0
#while [ $a -lt 10 ]
#do 
 	echo "$a"
 	a=`expr $a + 1`
#done


#until [ ! $a -lt 10 ]
#do
#	echo "$a"
#	a=`expr $a + 1`
#done


# NESTED_LOOP 

#while [ $a -lt $1 ]
#do
#	b="$a"
#	while [ "$b" -ge 0 ]
#	do
#		echo -n " $b "
#		b=`expr $b - 1`
#	done
#	echo
#	a=`expr $a + 1`
#done


for i in  {1...100}
do 
	echo "$i"
done


























