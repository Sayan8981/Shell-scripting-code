#!/bin/bash

#log init
log="/home/saayan8981/Documents/github/Shell-scripting-code/log/log_file.txt"
#input files
filename="Idea1.txt Idea2.txt Idea3.txt"
#source to copy
source='bkp/'
#destination to paste
dest='output/'
#search text to replace
search=';bfkbsb;bsvbsvb;R(9,8,0);;\n;sbsd;a;6245865476;bnmvbxcv cxdada;;'

echo "[${USER}][`date`]" >> $log
echo "[${USER}][`date`] - ${*} $filename" >> $log

echo "[${USER}][`date`] - ${*} Script executed from: ${PWD} for [$filename]" >> $log
#operation
for file in $filename;
do
    cd $source
    if [ -e  $file ]; then
        echo "[${USER}][`date`] - ${*} $file" >> $log
        replace=${file%.txt}';a;'${file%.txt}'_1;;;;'
        sed -i -z "s/$search/$replace/" "$file"
        echo "[${USER}][`date`] - ${*} $file is exist" >> $log
        cd ..
        echo "[${USER}][`date`] - ${*} back to : ${PWD}" >> $log
        cp $source'/'$file $dest
        echo "[${USER}][`date`] - ${*} $file copied to $dest" >> $log
    else
        echo "[${USER}][`date`] - ${*} Script executed from: ${PWD} $file" >> $log
        echo "[${USER}][`date`] - ${*} $file is not exist" >> $log
    fi
done