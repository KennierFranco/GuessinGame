echo "Try to guess the number of files in the current directory. Pleasy enter a number and press the enter key:"
read guess

function numfil {
	local number=$(ls | wc -l)
	echo $number
}

num_of_files=$(numfil) #Variable that contains the number of files.

while [[ $guess -ne $num_of_files ]] 
do
	if [[ $guess -gt $num_of_files ]] #greater than
	then
		echo "Your answer is too high! Try again"
	else [[ $guess -lt $num_of_files ]] #less than
		echo "Your answer is too low! Try again"
	fi
	
	echo "Please try again:"
	read guess
done

echo "Congrats, you did it! You've guessed the exact number of files in the current directory"

