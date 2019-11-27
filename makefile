
NOW = $(shell date)	
README.md: guessinggame.sh
	touch README.md
	echo "my project" > README.md \n
	echo ${NOW} >> README.md \n
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

