all: README.md

README.md: guessinggame.sh
	@echo "# Guessing Game by Yauheni Mardan" > README.md	
	@echo "- **Date** and **time** at which make was run: $$(date)" >> README.md
	@echo "- *Number of lines*: $$( wc -l < guessinggame.sh )" >> README.md

clean:
	@rm README.md
