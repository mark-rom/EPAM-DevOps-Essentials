#!/bin/bash
[[ $1 == $2 ]]
echo First check code: $?

[[ $1 > $2 ]]
echo Second check code: $?

[[ -z $TEST ]]
echo Third check code: $?

[[ $3 -ne $4 ]]
echo Forth check code: $?

[[ $3 -ge $4 ]]
echo Fifth check code: $?