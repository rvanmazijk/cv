ETC = $(wildcard etc/*.{sty,tex})

all: RvanMazijk_CV_1p.pdf RvanMazijk_CV_full.pdf

RvanMazijk_CV_1page.pdf: RvanMazijk_CV_1p.tex $(ETC)
	xelatex $<

RvanMazijk_CV_full.pdf: RvanMazijk_CV_full.tex $(ETC)
	xelatex $<

clean:
	rm *.aux *.log
