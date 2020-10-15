resume.pdf: resume.tex
	pdflatex resume.tex

.PHONY: clean preview

preview: resume.pdf
	xdg-open resume.pdf

clean:
	rm -f resume.aux resume.log resume.out resume.pdf
