IMAGE ?= moderncv-bremer
TEX ?= examples/example.tex
ENGINE ?= lualatex
OUTDIR ?= output

.PHONY: image pdf watch clean shell

image:
	docker build -t $(IMAGE) .

pdf:
	mkdir -p $(OUTDIR)
	docker run --rm -v "$$(pwd)":/work -w /work $(IMAGE) \
		latexmk -$(ENGINE) -interaction=nonstopmode -halt-on-error -output-directory=$(OUTDIR) $(TEX)

watch:
	mkdir -p $(OUTDIR)
	docker run --rm -it -v "$$(pwd)":/work -w /work $(IMAGE) \
		latexmk -pvc -$(ENGINE) -interaction=nonstopmode -halt-on-error -output-directory=$(OUTDIR) $(TEX)

clean:
	rm -rf $(OUTDIR) *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz

shell:
	docker run --rm -it -v "$$(pwd)":/work -w /work $(IMAGE) bash
