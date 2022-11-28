.PHONY: serve
serve:
	python3 -m http.server 8000

.PHONY: s
s: serve

.PHONY: dev
dev:
	subl .
	make serve
