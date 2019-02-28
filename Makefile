RENDER = Rscript -e "rmarkdown::render('$<')"

all: RvanMazijk_CV_1page.pdf RvanMazijk_CV_full.pdf

RvanMazijk_CV_1page.pdf: RvanMazijk_CV_1page.Rmd
	$(RENDER)

RvanMazijk_CV_full.pdf: RvanMazijk_CV_full.Rmd
	$(RENDER)
