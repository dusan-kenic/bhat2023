#!/bin/bash

# Parse the tools: lines.
for tool in $(grep tools:  exercises/*.md | awk -F: '{ print $3}' ) ; do
    echo $tool
done | sort -u
