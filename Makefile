build-pdf:
	latexmk presentation.tex
	latexmk handout.tex

clean:
	find ./build/ -type f -not -name '*.pdf' -exec rm {} +
	rm -rf ./web/

web-presentation:
	mkdir ./web/
	cp ./build/presentation.pdf ./web/

web-handout:
	mkdir ./web/
	cp ./build/handout.pdf ./web/

