README.md: 
	echo '# THE UNIX WORKBENCH PROJECT: GUESSING GAME' > README.md
	
	date >> README.md

	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
