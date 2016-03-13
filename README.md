# nishanths.github.io [![wercker status](https://app.wercker.com/status/fba89a110952058b1ed018f98722af1e/s/source "wercker status")](https://app.wercker.com/project/bykey/fba89a110952058b1ed018f98722af1e)

The responsive Jekyll theme that powers [this website](https://nishanths.github.io).

**Branches**

- [`source`](https://github.com/nishanths/nishanths.github.io/tree/source): Jekyll source
- [`master`](https://github.com/nishanths/nishanths.github.io/tree/master): generated static files for GitHub Pages

## Features

- Syntax highlighting
- Responsive with flexbox
- [Subtlte animations](#effects)
- Built-in 404 page
- [Automatic deploys](#build-and-deploy)

<img src="http://cl.ly/0U142h3i003v/Screen%20Shot%202016-03-13%20at%2012.51.27%20PM.png" width=1200>

## Setup

To view the website locally:

```bash
# clone the repo into a directory named `website`
$ git clone https://github.com/nishanths/nishanths.github.io.git website
$ cd website

# install gems
$ bundle

# Edit `_config.yml` and other files as needed ...

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

## Effects


**Pulse animation**

A green dot that links to the home page pulses when the page is loaded and hovered over.

![](http://cl.ly/363x0X1u320j/pulse.gif)

## Build and deploy


To generate static files in the `_site` directory, run:

```
$ jekyll build
```

**Automated deploy**

The `wercker.yml` files contains a job that builds and force pushes the static files to the `master` branch on GitHub. I usually keep the source on a separate `source` branch and let wercker take care of pushing to `master`.


## License

The web fonts are subject to their original licenses. You are welcome to use the other content under the MIT License.

[MIT](http://nishanths.mit-license.org). Copyright © 2016 [Nishanth Shanmugham](https://github.com/nishanths).
