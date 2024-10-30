run: clean
	hurl --report-json report --report-html _site --compressed --test . 

clean:
	rm -rf report/store
	rm -rf _site/store

