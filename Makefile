CV_CONFIG=src/CV/config.yml
CV_PARTS=src/CV/parts/*.md
year=$(shell date +'%Y')

.PHONY: cv readme


cv: $(CV_CONFIG) $(CV_PARTS)
	echo processing $^
	pandoc -o output/cv.samueloverington.${year}.pdf \
		--from markdown \
		--template=src/template/eisvogel/eisvogel.tex \
		--listings \
		$^
	cp output/cv.samueloverington.${year}.pdf cv.samueloverington.pdf

# update the README.md file with the latest CV
readme: $(CV_PARTS)
	echo "making cache for README.md"
	mkdir -p cache
	echo "Making latex file for README.md"
	pandoc -o cache/README.latex \
		--from markdown \
		--template=src/template/eisvogel/eisvogel.tex \
		--listings \
		$^
	echo "Converting README.latex to README.md"
	echo "This will take a while, please be patient."
	mkdir -p output
	echo processing cache/README.latex
	pandoc -o output/README.md \
		--from latex \
		--standalone \
		--to gfm \
		--listings \
		cache/README.latex
	echo "README.md generated successfully."
	echo "Cleaning up cache files"
	rm -rf cache/README.latex
	rm -rf cache
	echo "Updated README.md with latest CV information."