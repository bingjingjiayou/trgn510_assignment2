#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 filename."
    exit 1
fi
url=$1
echo "$url"
wget -O data "$url" -q
echo "$datafile"
while read -n 1 c
do
  echo "$c"
done < "data" | grep '[[:alpha:]]' | sort | uniq -c | sort -nr
