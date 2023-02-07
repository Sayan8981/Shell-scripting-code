#!/bin/bash


name='Kevin'
greet="Welcome $name, to GeeksforGeeks!"
echo $greet

filename_1='Idea1.txt'
filename_2='Idea2.txt'
filename_3='Idea3.txt'
search=';hkfjshgs;a;R(0,1,1)(4,3,2);bvhjfv;\n_;cncs;0123;nbvhsfbvhjsbvjh vds vsjhbvs;;'
replace=';hkfjshgs;'

echo $filename_1

cd bkp/

echo "Script executed from: ${PWD} $name $filename_1"

if [ -e  $filename_1 ]; 
then
    echo $filename_1
    sed -i '' -e "s/$search/$replace/" "$filename_1"
    echo "$filename_1 is exist"
else
    echo "No file exist"
fi

mv Idea1.txt-e Idea_new.txt
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
