#!/usr/bin/env bash

script_full_path=$(realpath $0)
script_dir_path=$(dirname $script_full_path)

if [ -z "$1" ]
    then
        echo "No source path supplied, will try in the current directory."
        input_path=$script_dir_path
    else
        input_path=$1
fi

for i in "$input_path"/*.md; do
    # pandoc -t html5 --css custom.css test.md -o file.pdf -s --pdf-engine=wkhtmltopdf
    pandoc -t html5 "$i" -o "$i".pdf -s --pdf-engine=wkhtmltopdf
done