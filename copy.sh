#!/bin/bash

filename="Idea1.txt Idea2.txt Idea3.txt"
source='bkp/'
dest='output/'
search=';bfkbsb;bsvbsvb;R(9,8,0);;\n;sbsd;a;6245865476;bnmvbxcv cxdada;;'

echo $filename

echo "Script executed from: ${PWD} $filename"

for file in $filename;
do
    cd $source
    echo "Script executed from: ${PWD} $file"
    if [ -e  $file ]; then
        echo $file
        replace=${file%.txt}';a;'${file%.txt}'_1;;;;'
        sed -i -z "s/$search/$replace/" "$file"
        echo "$file is exist"
        cd ..
        echo "back to : ${PWD}"
        cp $source'/'$file $dest
    else
        echo "Script executed from: ${PWD} $file"
        echo "$file is not exist"
    fi
done    
