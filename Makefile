CV_CONFIG=src/CV/config.yml
CV_PARTS=src/CV/parts/*.md
year=$(shell date +'%Y')

cv: $(CV_CONFIG) $(CV_PARTS)
	echo processing $^
	pandoc -o output/cv.samueloverington.${year}.pdf \
		--from markdown \
		--template=src/template/eisvogel/eisvogel.tex \
		--listings \
		$^
		


readme: $(CV_PARTS)
	pandoc -o output/README.${year}.latex \
		--standalone \
		$^
	pandoc -o README.md \
		output/README.${year}.latex