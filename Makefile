
NOW = $(shell date)	
README.md: guessinggame.sh
	touch README.md
	echo "my project" > README.md 
	echo ${NOW} >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

