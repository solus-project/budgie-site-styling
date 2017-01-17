LESSFLAGS = --clean-css \
	--glob \
	--no-color \
	--no-ie-compat \
	--no-js \
	--strict-math=on

setup: sync
	sudo eopkg install nodejs ruby-devel woff-tools
	sudo npm install -g less less-plugin-clean-css less-plugin-glob
	sudo gem install fontcustom

site: sync
	lessc $(LESSFLAGS) src/less/website.less > build/website.css

sync:
	git submodule update --remote --rebase

.DEFAULT_GOAL := all
.PHONY : all
all: site