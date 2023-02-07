#!/bin/bash
name='Kevin'
greet="Welcome $name, to GeeksforGeeks!"
echo $greet

filename_1='Idea1.txt'

search='hkfjshgs;a;R(0,1,1)(3,2);'
replace=${filename_1%.txt}';a;'${filename_1%.txt}'_1;;;;'

echo $filename_1, $replace

cd bkp/

echo "Script executed from: ${PWD} $name $filename_1"

if [ -e  $filename_1 ]; 
then
    echo $filename_1
    sed -i -z "s/$search/$replace/" "$filename_1"
    echo "$filename_1 is exist"
else
    echo "No file exist"
fi

# if [ -f $filename_2 ]
# then
#     sed -i "s/$search/$filename_2/" $filename_2
#     echo "$filename_2 is exist"
# else
#     echo "No file exist"
# fi

# if [ -f $filename_3 ]
# then
#     sed -i "s/$search/$filename_3/" $filename_3
#     "$filename_3 is exist"
# else
#     echo "No file exist"
# fi
