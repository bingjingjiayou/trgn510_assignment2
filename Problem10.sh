#!/bin/bash
a=$( expr $1 \* $2 )

b=$(expr "scale=2;$a + 273.15"|bc)

echo $b
