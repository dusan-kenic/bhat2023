#!/bin/bash

# Parse the directories_to_sync lines.
for dir in $(grep directories_to_sync: exercises/*.md | awk -F: '{ print $3}' ) ; do
   echo $dir
done | sort -u