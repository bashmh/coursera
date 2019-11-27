
NOW = $(shell date)	
README.md: guessinggame.sh
	touch README.md
	echo "# my project" > README.md 
	echo "## The guessinggame" >> README.md
	echo ${NOW} >> README.md 
	echo "The number of lines in the guessinggame script are:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
