JEKYLL := bundle exec jekyll
SRCDEST := --source site --destination site/_site

.PHONY: default
default: b

.PHONY: b
b:
	$(JEKYLL) build $(SRCDEST)

.PHONY: s
s:
	$(JEKYLL) serve $(SRCDEST)

.PHONY: post
post:
	# usage: make post t="My Title"
	$(JEKYLL) post $(t) --source site

.PHONY: deps
deps:
	bundle install --path vendor/bundle
