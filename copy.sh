#!/bin/bash

#log init
log="/Users/saayandas/Documents/Github_repo/Shell-scripting-code/log/log_file.txt"
#input files
filename="Idea1.txt Idea2.txt Idea3.txt"
#source to copy
source='bkp/'
#destination to paste
dest='output/'
#search text to replace
search=';bfkbsb;bsvbsvb;R(9,8,0);;\n;sbsd;a;6245865476;bnmvbxcv cxdada;;'

date > $log
echo $filename >> $log

echo "Script executed from: ${PWD} $filename" >> $log
#operation
for file in $filename;
do
    cd $source
    echo "Script executed from: ${PWD} $file" >> $log
    if [ -e  $file ]; then
        echo $file >> $log
        replace=${file%.txt}';a;'${file%.txt}'_1;;;;'
        sed -i -z "s/$search/$replace/" "$file"
        echo "$file is exist" >> $log
        cd ..
        echo "back to : ${PWD}" >> $log
        cp $source'/'$file $dest
    else
        echo "Script executed from: ${PWD} $file" >> $log
        echo "$file is not exist" >> $log
    fi
done