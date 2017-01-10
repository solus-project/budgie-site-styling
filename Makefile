FONTCUSTOM_FLAGS = --config src/font/fontcustom.yml \
	--name=budgie \
	--no-hash \
	--output=build/fonts/ \
	src/font/

LESSFLAGS = --clean-css \
	--glob \
	--no-color \
	--no-ie-compat \
	--no-js \
	--strict-math=on

font:
	fontcustom compile $(FONTCUSTOM_FLAGS)

less: site

setup:
	sudo eopkg install nodejs ruby-devel woff-tools
	sudo npm install -g less less-plugin-clean-css less-plugin-glob
	sudo gem install fontcustom

site:
	lessc $(LESSFLAGS) src/less/website/website.less > build/website.css

.DEFAULT_GOAL := all
.PHONY : all
all: font site