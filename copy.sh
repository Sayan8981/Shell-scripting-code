#!/bin/bash

filename_1='Idea1.txt'
source='bkp/'
dest='output/'
search='hkfjshgs;a;R(0,1,1)(3,2);\n_;cncs;0123;nbvhsfbvhjsbvjh vds vsjhbvs;;'
replace=${filename_1%.txt}';a;'${filename_1%.txt}'_1;;;;'

echo $filename_1, $replace

cd $source

echo "Script executed from: ${PWD} $filename_1"

if [ -e  $filename_1 ]; 
then
    echo $filename_1
    sed -i -z "s/$search/$replace/" "$filename_1"
    echo "$filename_1 is exist"
    cd ..
    echo "back to : ${PWD}"
    cp $source'/'$filename_1 $dest
else
    echo "$filename_1 is not exist"
fi
