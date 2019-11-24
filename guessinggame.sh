#!/usr/bin/env bash

answer=false

function guess() {
echo "guess the number of files in the current directory, followed by [ENTER]: "
read number_of_files
if [ $number_of_files == $(ls -l | grep -v ^l | wc -l) ]; then
	answer=true
	echo "Congrats,ur answer is right"
elif [ $number_of_files -gt $(ls -l | grep -v ^l | wc -l) ]; then 
	echo "ur answer is greater than the right answer"
elif [ $number_of_files -lt $(ls -l | grep -v ^l | wc -l) ]; then
	echo "ur answer is lower than the right answer"
fi
}


while [ $answer == false ]; do 
	guess
done  
