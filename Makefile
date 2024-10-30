# Loads variables from .env file
ifneq (,$(wildcard ./.env))
    include .env
    export
endif

HURL_COMMAND=hurl --report-json _report --report-html _site --compressed --test --retry 3

all: clean
	$(HURL_COMMAND) .

public: clean
	$(HURL_COMMAND) public

clean:
	rm -rf report/store
	rm -rf _site/store

