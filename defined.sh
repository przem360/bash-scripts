#!/usr/bin/env bash

if [ -z "$1" ]
    then
        echo "No source path supplied, exiting."
        exit 1
    else
        source_file=$1
fi

awk '/^[ \t]*(void|int|char|float|double|bool)[ \t]/ && /\(/ && /\{/ {print}' "$source_file"

awk '/^[ \t]*(void|int|char|float|double|bool)[ \t]/ && /\(/  && /\;/ && !/\=/ {print}' "$source_file"
