#!/bin/bash



dir_address=$1
dir_name=$2

cd "$dir_address"
mkdir test
cp "$dir_name" test
cd test
tar xvf "$dir_name"







cd "$dir_address"test

hr_arr=( '01' '02' '03' '04' '05' '06' '07' '08' '09' '10' '11' '12')

for var in "${hr_arr[@]}" ;
do
     temp=`find -name "*-$var-*" | wc -l`
	echo "$temp"
    if [ $temp -gt 0 ]; then
        echo "ok"
        mkdir "$var"
        sudo find . -name "*-$var-*" -exec mv {} ./"$var" \;
    else
        continue
    fi
done

