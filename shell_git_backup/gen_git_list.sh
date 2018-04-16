#!/bin/sh
for dir in $(ls -d */)
do
  cd $dir
  echo "into $dir"
  cat .git/config | grep url | awk '{print $3}' >> git_list.txt
  cd ..
done

# for entry in "$search_dir"/*
# do
#   echo "$entry"
# done