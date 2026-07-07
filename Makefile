all: resume.pdf 

resume.pdf: resume.tex hieudo-build.cls
	xelatex resume.tex


