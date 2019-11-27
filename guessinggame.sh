#!/usr/bin/env bash
#file_name:guessinggame.sh
answer=false
function guess() {
files_num=$(find -type f | wc -l)
echo "guess the number of files in the current directory, followed by [ENTER]: "
read number_of_files
if [ $number_of_files == $files_num ]; then
	answer=true
	echo "Congrats,ur answer is right"
elif [ $number_of_files != $files_num ]; then
	if [ $number_of_files -gt $files_num ]; then 
	echo "ur answer is greater than the right answer"
	elif [ $number_of_files -lt $files_num ]; then
	echo "ur answer is lower than the right answer"
	fi
fi
}
while [ $answer == false ]; do 
	guess
done  
