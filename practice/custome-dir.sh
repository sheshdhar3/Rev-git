#!/bin/bash

<<task
this is for custom_dirctory for customize data
task

echo "Enter the name of root dir"

read root_dir
mkdir $root_dir && cd $root_dir

echo "Enter the custome dir name"

read custom_dir

for (( i=$1; i<=$2; i++ ))

do
	mkdir "${custom_dir}${i}"
done
