#!/bin/bash
set -x
if [ "$#" -ne 1 ]; then
    echo "Un seul argument est requis."
    exit 1
fi

strip_num="$1"
url="https://xkcd.com/$strip_num"
page_content=$(wget -qO - "$url")
line=$(echo "$page_content" | grep -o '<meta property="og:image" content=".*">' | head -n 1)
IFS='https://' read -ra fields <<< "$line"
echo "f=${fields[@]}"
echo "Ligne : $line"
echo "Fields : $fields"
echo "Fields 8e : ${fields[7]}"

image_url='https://${fields[2]}'
wget "$image_url" -P /home/user/
xdg-open "/home/user/$(basename $image_url)"
rm "/home/user/$(basename $image_url)"
