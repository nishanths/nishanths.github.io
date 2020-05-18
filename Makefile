JEKYLL := bundle exec jekyll
SRCDEST := --source site --destination out

# make changes to styles/content.
# then 'make' to build changes.
# then commit your changes.
# then 'make publish' to push to GitHub Pages.

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

.PHONY: commit
commit:
	git commit -am .

.PHONY: all
all: b commit publish
