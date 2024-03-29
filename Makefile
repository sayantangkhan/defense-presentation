build-pdf:
	latexmk presentation.tex
	latexmk handout.tex

clean:
	find ./build/ -type f -not -name '*.pdf' -exec rm {} +
	rm -rf ./web/

web-presentation:
	mkdir -p ./web/
	cp ./presentation.pdf ./web/
	echo "Link to <a href=presentation.pdf>presentation</a> and <a href=handout.pdf>handout</a>." > ./web/index.html

web-handout:
	mkdir -p ./web/
	cp ./handout.pdf ./web/
	echo "Link to <a href=presentation.pdf>presentation</a> and <a href=handout.pdf>handout</a>." > ./web/index.html
