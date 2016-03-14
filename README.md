# nishanths.github.io

A super awesome responsive Jekyll theme

[![wercker status](https://app.wercker.com/status/fba89a110952058b1ed018f98722af1e/s/source "wercker status")](https://app.wercker.com/project/bykey/fba89a110952058b1ed018f98722af1e)

**Branches**

- [`source`](https://github.com/nishanths/nishanths.github.io/tree/source): Jekyll source
- [`master`](https://github.com/nishanths/nishanths.github.io/tree/master): generated static files for GitHub Pages

## Features

- Syntax highlighting
- Responsive (with flexbox)
- Built-in 404 page
- Google Analytics
- [Automatic deploys](#build-and-deploy)
- [Subtle animations](https://github.com/nishanths/nishanths.github.io/blob/source/_sass/dot.scss)


<img src="http://cl.ly/091S0l0V1d0X/Screen%20Shot%202016-03-14%20at%2012.20.43%20AM.png" width=1000>

## Setup

To view the website locally:

```bash
# clone the repo into a directory named website
$ git clone https://github.com/nishanths/nishanths.github.io.git website
$ cd website

# make sure we are on the correct branch
$ git checkout source

# install gems
$ bundle

# Edit _config.yml and other files as needed ...

# serve locally
$ bundle exec jekyll serve
```

The site should be live at `http://localhost:4000`. Jekyll watches and regenerates files on change.


## Usage

To create a new post, run:

```bash
$ bundle exec jekyll post "Your new post title"
# New post created at _posts/2016-03-13-your-new-post-title.md.
```

## Build and deploy

To generate static files in the `_site` directory, run:

```
$ bundle exec jekyll build
```

**Automatic deploy**

The `wercker.yml` file contains a job that builds and force pushes the static files to the `master` branch on GitHub. I usually keep the source on a separate `source` branch and let wercker take care of pushing to `master`.


## License

The web fonts are subject to their original licenses.

You are welcome to use the other content under the MIT License (where applicable).

[The MIT License](http://nishanths.mit-license.org). Copyright © 2016 [Nishanth Shanmugham](https://github.com/nishanths).
