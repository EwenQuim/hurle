# Loads variables from .env file
ifneq (,$(wildcard ./.env))
    include .env
    export
endif


run: clean
	hurl --report-json report --report-html _site --compressed --test --retry 3 . 

clean:
	rm -rf report/store
	rm -rf _site/store

