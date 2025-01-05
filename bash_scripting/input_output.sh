#!/bin/bash

# create a script that does the following:

# asks the user to input a filename
# writes the following poem to the file specified by user:
read -r -d '' poem << EOF
An old silent pond...
A frog jumps into the pond,
splash! Silence again.

Autumn moonlight-
a worm digs silently
into the chestnut.

In the twilight rain
these brilliant-hued hibiscus -
A lovely sunset.
EOF

# outputs the poem to the terminal
# outputs the message "Task finished" to stderr

echo "Please, enter the name of your file:"
read -r filename

echo $poem > $filename
echo $poem
echo "Task finished" 1>&2