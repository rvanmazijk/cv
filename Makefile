RENDER_PDF = Rscript -e "\
	library(rmarkdown);\
	render('$<', 'pdf_document')"

RENDER_GH = Rscript -e "\
	library(rmarkdown);\
	render('$<', 'github_document')"

all: 1page full

1page: RvanMazijk_CV_1page.pdf

full: RvanMazijk_CV_full.pdf RvanMazijk_CV_full.md

RvanMazijk_CV_1page.pdf: RvanMazijk_CV_1page.Rmd
	$(RENDER_PDF)

RvanMazijk_CV_full.pdf: RvanMazijk_CV_full.Rmd
	$(RENDER_PDF)

RvanMazijk_CV_full.md: RvanMazijk_CV_full.Rmd
	$(RENDER_GH)
