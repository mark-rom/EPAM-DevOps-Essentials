#!/bin/bash

# Prerequesties:
# - in your home folder create a file named vars 
# - add a variable called FILE with value new_file to vars file 
NAME="Name_Suraname"
source ./vars
mkdir $NAME
mkdir $NAME/$FILE
ls $NAME/$FILE