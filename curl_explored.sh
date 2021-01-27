#!/bin/bash

#-X is used to specify method
#-H is used to specify header
function get_req(){
	curl www.myapi.com -X GET
}

get_req

function post_req(){
	#more headers sep semicolon
	curl www.myapi.com/post -X POST -d '{"name":"Omkar Sawant","age":18}' -H 'content-type:application/json'

	#OR auto-identified
	# curl www.myapi.com/post -d '{"name":"Omkar Sawant","age":18}'
	#OR file
	# curl www.myapi.com/post -d @myfile.json
}

post_req




