#! /bin/sh

# EVEN OR ODD PROGRAM with for and while  

#for NUM in 1 2 3 4 5 6 7 8 9 10
#do 
#	if [ `expr $NUM % 2` -eq 0 ]
#	then 
#		echo "$NUM"
#	fi
#done


MAX=$1
a=1
while [ $a -lt $MAX ]
do 
	if [ `expr $a % 2` -eq 0 ]
	then 
		echo "EVEN : $a"
	else 
		echo "ODD : $a"
	fi
        a=`expr $a + 1`
done

