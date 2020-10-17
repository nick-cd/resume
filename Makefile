resume.pdf: resume.tex
	pdflatex resume.tex

.PHONY: clean preview secret rmsecret

preview: resume.pdf
	xdg-open resume.pdf

secret:
	git secret reveal
	@git config filter.rev.clean ./revert.sh
	@sed -i 's/^%\(\\input\)/\1/g' resume.tex

rmsecret:
	@./revert.sh resume.tex
	rm -f secret

clean:
	rm -f resume.aux resume.log resume.out resume.pdf
