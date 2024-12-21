#!/bin/bash

# create a script that does the following:
# - accepts any number of arguments
# - prints all arguments in the following format "Arg1: <arg1 value>", "Arg2: <arg2 value>"
# - adds the value of the next argument to the previous one and prints it out (for the last argument add the value of the first one)

args=("$@")
sums=()

for idx in $(seq 0 $(( $# - 1 ))); do
    arg_position=$(( idx+1 ))
    arg_value=${args[$idx]}

    if [[ $arg_position -eq $# ]]; then
        sum=$(( "$arg_value" + ${args[0]} ))
    else 
        sum=$(( "$arg_value" + ${args[$arg_position]} ))
    fi
    sums+=( "$sum" )

    echo "Arg{$arg_position}: $arg_value"
done

echo "${sums[@]}"
