#!/bin/bash


dir_address=$1
dir_name=$2

if [ "$dir_address" = -h ];then
	echo  "이 실행파일은 tar파일만 사용가능합니다.  "
	echo  "명령어 형식 : shell(√) 파일경로(√)파일이름(√)"
	  
else
	cd "$dir_address"
	mkdir test
	cp "$dir_name" test
	cd test
	tar xvf "$dir_name"


	#압축해제입니다.




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
fi
