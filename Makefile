ETC = etc/education.tex etc/header.tex etc/publications.tex etc/style.sty 

all: RvanMazijk_CV_1p.pdf RvanMazijk_CV_full.pdf

RvanMazijk_CV_1p.pdf: RvanMazijk_CV_1p.tex $(ETC)
	xelatex $<

RvanMazijk_CV_full.pdf: RvanMazijk_CV_full.tex $(ETC)
	xelatex $<

clean:
	rm *.aux *.log
