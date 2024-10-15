cv_main = src/CV/config.yml
year=$(shell date +'%Y')

cv: src/CV/parts/top_aim_skills_edu.md src/CV/parts/dev.md
	pandoc -o output/cv.samueloverington.${year}.pdf \
		--from markdown \
		--template=src/template/eisvogel/eisvogel.tex \
		--listings \
		src/CV/config.yml \
		src/CV/parts/top_aim_skills_edu.md \
		src/CV/parts/dev.md


readme:
	pandoc -o output/README.${year}.latex \
		--standalone \
		src/CV/parts/top_aim_skills_edu.md \
		src/CV/parts/dev.md
	pandoc -o README.md \
		output/README.${year}.latex