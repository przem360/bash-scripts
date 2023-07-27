#!/usr/bin/env bash

script_full_path=$(realpath $0)
script_dir_path=$(dirname $script_full_path)

if [ -z "$1" ]
    then
        echo "No source format supplied, assuming jpg."
        input_format="jpg"
else
    input_format=$1
fi

if [ -z "$2" ]
    then
        echo "No source path supplied, will try in the current directory."
        input_path=$script_dir_path
    else
        input_path=$2
fi

if [ -z "$3" ]
    then
        echo "No output file name, will create scans.pdf in script directory."
        output_pdf="scans.pdf"
    else
        output_pdf=$3
fi

convert $(ls -v "$input_path"/*."$input_format") "$output_pdf"
