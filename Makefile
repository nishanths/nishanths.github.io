JEKYLL := bundle exec jekyll
SRCDEST := --source site --destination out

.PHONY: default
default: b

.PHONY: b
b:
	$(JEKYLL) build $(SRCDEST)

.PHONY: s
s:
	$(JEKYLL) serve $(SRCDEST)

.PHONY: draft
draft:
	# usage: make draft t="My Title"
	# then move the file to site/_posts/ when done
	$(JEKYLL) draft $(t) --source site

.PHONY: deps
deps:
	bundle install --path vendor/bundle

.PHONY: publish
publish:
	# it seems like out/ should have been committed at least once for this
	# to work
	git subtree push --prefix out/ origin master
