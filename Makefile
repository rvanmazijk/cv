RENDER_PDF = Rscript -e "\
	library(rmarkdown);\
	render('$<', 'pdf_document')"

RENDER_GITHUB = Rscript -e "\
	library(rmarkdown);\
	render('$<', 'github_document')"

all: 1page full

1page: RvanMazijk_CV_1page.pdf

full: RvanMazijk_CV_full.pdf RvanMazijk_CV_full.md

RvanMazijk_CV_1page.pdf: RvanMazijk_CV_1page.Rmd _output.yml style.sty
	$(RENDER_PDF)

RvanMazijk_CV_full.pdf: RvanMazijk_CV_full.Rmd _output.yml style.sty
	$(RENDER_PDF)

RvanMazijk_CV_full.md: RvanMazijk_CV_full.Rmd _output.yml style.sty
	$(RENDER_GITHUB)
