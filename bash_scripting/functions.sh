#!/bin/bash

# create a script that does the following:
# - has a function that multiplies the argument passed to it by itself
# - has a second function that passes each argument passed to the script to the first function and increases the result by 1 and outputs to the console
# run your function with the following arguments: 5 6 1 3 9


function multiplier() {
    local number=$1
    echo $(( number * number))
    return 0
}

function main() {
    local result
    for i in "$@"; do
        result=$(multiplier "$i")
        ((result += 1))
        echo $result
    done;
}

main "$@"