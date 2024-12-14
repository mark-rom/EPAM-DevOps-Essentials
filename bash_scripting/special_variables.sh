#!/bin/bash
echo This is a script named $0
echo Here are all arguments passed to the script $@
echo There were $# of them
echo the second was $2 and the fourth $4

[[ $1 -eq $2 ]]
echo $?