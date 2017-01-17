# Budgie Site Styling

This is the styling for the Budgie Desktop website.

## Development

### Dependencies

To get started on LESS development, run `make setup` on your Solus system. If you're not on Solus, you'll need to:

1. Install nodejs and globally npm install: less less-plugin-clean-css less-plugin-glob
2. Run `git submodule init`
3. Run `make sync`

### Compile

To compile the LESS, run `make`.

### Syncing with Solbit

Budgie Site Styling leverages [Solbit](https://github.com/solus-project/solbit) to reduce redundancy across the multitude of Solus Project brand assets. To ensure Budgie Site Styling remains in sync with Solbit, 
use `make sync`. Changes in Solbit are compiled into the Budgie Site Styling stylesheet.

## Styling

I use 4-char wide tabs, not spaces. Yes I'm a monster.

## Licensing

Apache-2.0