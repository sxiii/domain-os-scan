#!/bin/bash
files=$(ls json/*json)
i=0
total=$(echo $files | wc -w)
for name in ${files[@]}; do
((i++));
os=$(cat $name | grep -B10 "Operating" | grep "name" | awk -F\" '{ print $4 }')
echo $os >> file2.tmp
tn=$(echo "$name" | awk -F"/" '{ print $2 }' | awk -F".json" '{ print $1 }')
x="$i/$total: $tn "
echo $x >> file1.tmp
done

pr -m -t -w100 file1.tmp file2.tmp

rm file1.tmp file2.tmp
