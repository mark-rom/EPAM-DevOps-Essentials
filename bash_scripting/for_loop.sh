#!/bin/bash
sum=0
amount=$#

for i in $@; do
    (( sum+=i ));
done
average=$(( "$sum" / "$amount" ))
echo "Sum: $sum"
echo "Amount: $#"
echo "Average: $average"