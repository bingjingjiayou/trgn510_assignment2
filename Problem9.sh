#!/bin/bash
FILES=$(/usr/bin/ls $@)
echo $FILES $@
for f in $FILES
do
   filesize=`ls -l $f | awk '{ print $5 }'`
   maxsize=$((1000))
   if [ $filesize -gt $maxsize ] ; then
   echo "Skipping $f file..."
   else
   echo "Processing $f file..."
   # count number of lines and output that for file $f
   wc -m $f
   fi
done
