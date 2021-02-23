#!/usr/bin/env bash
echo "hello world!"
Var=1
array=(1 2 3 4 5 6)
for i in "${array[@]}"; do
    echo "$i"
done
read Name
cd $Name
# If the path is not valid
Contents=$(ls | grep "\.log")
for i in "${Contents[@]}"; do
    echo "$i"
done