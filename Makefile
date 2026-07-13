CV_CONFIG := src/CV/config.yml
CV_SECTIONS := src/CV/compvis/*.md
YEAR=$(shell date +'%Y')

PANDOC := pandoc

PANDOC_MD_FLAGS := \
  --from markdown \
  --template=src/template/eisvogel/eisvogel.tex \
  --syntax-highlighting=idiomatic

PANDOC_README_FLAGS := \
  --from markdown \
  --to gfm \
  --wrap=none \
  --lua-filter=src/tools/readme-filter.lua

CV_INPUTS := $(CV_CONFIG) $(CV_SECTIONS)
README_INPUTS := src/CV/config-readme.yml $(CV_SECTIONS)

.PHONY: cv readme


cv: $(CV_INPUTS)
	$(PANDOC) -o output/cv.samueloverington.$(YEAR).pdf $(PANDOC_MD_FLAGS) $^
	cp output/cv.samueloverington.$(YEAR).pdf cv.samueloverington.pdf

# update the README.md file with the latest CV
readme: $(README_INPUTS)
	mkdir -p output
	$(PANDOC) -o output/README.md $(PANDOC_README_FLAGS) $^
	echo "README.md generated successfully."