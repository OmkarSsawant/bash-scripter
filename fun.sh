#!/bin/sh

#Defining Function

print(){
 	echo "Hello $1 $2"	
	return 10
}

#Invokinng function
# params are passed as we pass in shell program
print Omkar Sawant

#Capture return value
ret=$?
echo "Last Returned Value $ret"


