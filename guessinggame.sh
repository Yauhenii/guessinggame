function start {
	echo "Welcome to Guessing Game"
	echo "Try to guess home many files are in the current directory"
	local num=$(ls -1 | wc -l)
	reply=-1
	echo "Type in your guess and then press enter"
	while [[ $reply -ne $num ]]
	do	
		read reply
		if [[ $reply -lt $num ]]
		then
			echo "Too low"
		elif [[ $num -lt $reply ]]
		then
			echo "Too high"
		fi
	done
	echo "Congratulations! You've entered an exact number of files"
}
start
