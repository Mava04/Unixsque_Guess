README.md: guessinggame.sh
	echo Title of the project: Unixsque Guess - guessinggame.sh > README.md
	echo Make was last run on $(shell date) >> README.md
	echo guessinggame.sh contains $(shell wc -l < guessinggame.sh) lines >> README.md
clean:
	rm README.md
