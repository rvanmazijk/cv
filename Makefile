RENDER_PDF = Rscript -e "\
	library(rmarkdown);\
	render('$<', 'pdf_document')"

RENDER_HTML = Rscript -e "\
	library(rmarkdown);\
	render('$<', 'HTML_document')"

all: 1page full

1page: RvanMazijk_CV_1page.pdf

full: RvanMazijk_CV_full.pdf RvanMazijk_CV_full.html

RvanMazijk_CV_1page.pdf: RvanMazijk_CV_1page.Rmd
	$(RENDER_PDF)

RvanMazijk_CV_full.pdf: RvanMazijk_CV_full.Rmd
	$(RENDER_PDF)

RvanMazijk_CV_full.html: RvanMazijk_CV_full.Rmd
	$(RENDER_HTML)
