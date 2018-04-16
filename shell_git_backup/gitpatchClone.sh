#!/bin/sh
while read p; do
    #echo $p
    git clone $p
done < git_list.txt
