#!/bin/bash

ARG=$1

if [[ ${#ARG}%2 -eq 1 ]]; then    echo Odd
else
    echo Even
fi