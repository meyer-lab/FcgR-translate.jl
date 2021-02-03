
all: figures temporal output/manuscript.html

venv: venv/bin/activate

venv/bin/activate: requirements.txt
	test -d venv || virtualenv venv
	. venv/bin/activate && pip install -Uqr requirements.txt
	touch venv/bin/activate

figures:
	mkdir -p ./output/
	julia -e 'using Pkg; Pkg.activate("."); Pkg.instantiate(); using FcTranslation; FcTranslation.figureAll()'

figure%.svg:
	julia -e 'using Pkg; Pkg.activate("."); Pkg.instantiate(); using FcTranslation; FcTranslation.figure$*()'

temporal:
	mkdir -p ./output/
	julia -e 'using Pkg; Pkg.activate("."); Pkg.instantiate(); using FcTranslation; FcTranslation.plotTemporal()'

output/manuscript.md: venv manuscripts/*.md
	mkdir -p ./output/
	. venv/bin/activate && manubot process --content-directory=manuscripts/ --output-directory=output/ --log-level=WARNING

output/manuscript.html: venv output/manuscript.md
	. venv/bin/activate && pandoc \
		--from=markdown --to=html5 --filter=pandoc-fignos --filter=pandoc-eqnos --filter=pandoc-tablenos \
		--bibliography=output/references.json \
		--csl=common/templates/manubot/style.csl \
		--metadata link-citations=true \
		--include-after-body=common/templates/manubot/default.html \
		--include-after-body=common/templates/manubot/plugins/table-scroll.html \
		--include-after-body=common/templates/manubot/plugins/anchors.html \
		--include-after-body=common/templates/manubot/plugins/accordion.html \
		--include-after-body=common/templates/manubot/plugins/tooltips.html \
		--include-after-body=common/templates/manubot/plugins/jump-to-first.html \
		--include-after-body=common/templates/manubot/plugins/link-highlight.html \
		--include-after-body=common/templates/manubot/plugins/table-of-contents.html \
		--include-after-body=common/templates/manubot/plugins/lightbox.html \
		--mathjax --variable math="" \
		--include-after-body=common/templates/manubot/plugins/math.html \
		--include-after-body=common/templates/manubot/plugins/hypothesis.html \
		--output=output/manuscript.html output/manuscript.md

clean:
	rm -rf venv output
