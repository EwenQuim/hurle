run: clean
	hurl --report-json report --report-html web --compressed --test . 

clean:
	rm -rf report/store

