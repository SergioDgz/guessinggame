#!/usr/bin/env bash
# File: guessinggame.sh

echo "Welcome to my first program"

function ask {
	echo "Guess the number of files in the current directory"
	read entry
	files=$(ls | wc -l)
}

ask

while [[ $entry -ne $files ]]
do
	if [[ $entry -lt $files ]]
	then
		echo "your guess is too low"
	else
		echo "your guess is too high"
	fi
	ask
done

echo "Congratulations! your entry is correct. Below you can find the list of the files:"
echo "--" && ls -l

