TOP_LEVEL = $(shell git rev-parse --show-toplevel)

lint:
	eslint $(TOP_LEVEL)/lib $(TOP_LEVEL)/test

setup:
	rm -rf .git/hooks
	ln -s $(shell pwd)/hooks/ .git/hooks
