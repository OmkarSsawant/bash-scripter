
#!/bin/bash

#head
echo "Prints the first page/para \n This is Sample Line 2 \n this is sample line 3" | head -n 1
echo "this is smaple text"| head --bytes 5

#lolcat is external cmd-software  prints colourful

echo "This is my Colourful text" | lolcat

#Reading for pipe input
PIPE_INPUT=$(cat)

echo "This is again piped from script"
echo "$PIPE_INPUT" | lolcat





