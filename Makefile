LESSFLAGS = --clean-css \
	--glob \
	--no-color \
	--no-ie-compat \
	--no-js \
	--strict-math=on

setup:
	git submodule init
	sudo eopkg install nodejs
	sudo npm install -g less less-plugin-clean-css less-plugin-glob

site: sync
	lessc $(LESSFLAGS) src/less/website.less > build/website.css

sync:
	git submodule update --remote --rebase

.DEFAULT_GOAL := all
.PHONY : all
all: site