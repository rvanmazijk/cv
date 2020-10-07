ETC = etc/education.tex etc/header.tex etc/publications.tex etc/style.sty 

all: RvanMazijk_CV_1p.pdf RvanMazijk_CV_full.pdf my-non-authorship-papers.pdf

RvanMazijk_CV_1p.pdf: RvanMazijk_CV_1p.tex $(ETC)
	xelatex $<

RvanMazijk_CV_full.pdf: RvanMazijk_CV_full.tex $(ETC)
	xelatex $<

my-non-authorship-papers.pdf: my-non-authorship-papers.Rmd
	Rscript -e "\
	library(rmarkdown);\
	render('$<')"

clean:
	rm *.aux *.log *.out
