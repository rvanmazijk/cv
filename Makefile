all: 1page full

1page: RvanMazijk_CV_1page.pdf

full: RvanMazijk_CV_full2.pdf

RvanMazijk_CV_1page.pdf: RvanMazijk_CV_1page.tex style.sty
	xelatex $<

RvanMazijk_CV_full2.pdf: RvanMazijk_CV_full2.tex style.sty
	xelatex $<

clean:
	rm *.aux *.log
