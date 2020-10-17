resume.pdf: resume.tex
	pdflatex resume.tex

.PHONY: clean secret rmsecret

secret:
	git secret reveal
	@git config filter.rev.clean ./revert.sh
	@sed -i 's/^%\(\\input\)/\1/g' resume.tex

rmsecret:
	@./revert.sh resume.tex
	rm -f secret

clean:
	rm -f resume.aux resume.log resume.out resume.pdf
