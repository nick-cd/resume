resume.pdf: resume.tex
	pdflatex resume.tex

.PHONY: clean

clean:
	rm -f resume.aux resume.log resume.out resume.pdf
