##
# Calebe94 Latex Curriculum
#
# @file
# @version 0.1

TEX_FILES := curriculum-pt.tex curriculum.tex curriculum-full.tex curriculum-ai-infra.tex curriculum-us-contractor.tex

all: pdf

pt:
	pdflatex curriculum-pt.tex

en:
	pdflatex curriculum.tex

full:
	pdflatex curriculum-full.tex

aiinfra:
	pdflatex curriculum-ai-infra.tex

uscontractor:
	pdflatex curriculum-us-contractor.tex

pdf: pt en full aiinfra uscontractor

lint:
	chktex $(TEX_FILES)

test:
	@for f in $(TEX_FILES); do \
		echo "==> Compiling $$f"; \
		pdflatex -interaction=nonstopmode -halt-on-error "$$f" || exit 1; \
	done
	@echo "All files compiled successfully."

clean:
	rm -f *.aux *.log *.out *.pdf

# end
