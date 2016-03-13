# nishanths.github.io [![wercker status](https://app.wercker.com/status/fba89a110952058b1ed018f98722af1e/s/source "wercker status")](https://app.wercker.com/project/bykey/fba89a110952058b1ed018f98722af1e)

The responsive theme that powers [`https://nishanths.github.io`](https://nishanths.github.io).

Branches:

- [`source`](https://github.com/nishanths/nishanths.github.io/tree/source): Jekyll source
- [`master`](https://github.com/nishanths/nishanths.github.io/tree/master): generated static files for GitHub Pages

<img src="http://cl.ly/0U142h3i003v/Screen%20Shot%202016-03-13%20at%2012.51.27%20PM.png" width=1200>

## Contents

* [Setup](#setup)
* [Effects](#effects)
* [Build and deploy](#build-and-deploy)
* [License](#license)

## Setup


```bash
# clone the repo into a directory named `website`
$ git clone <repo-url> website
$ cd website

# install dependencies
$ bundle

# edit `_config.yml` and other files as needed...

# serve locally
$ bundle exec jekyll s
```

The site should be live at `http://localhost:4000`. Jekyll watches and regenerates files on change.


## Usage

```bash
# create a new post
$ bundle exec jekyll post "Your new post title"
```

## Effects


> **Pulse animation**

A green dot that links to the home page pulses when the page is loaded or hovered over.

![](http://cl.ly/363x0X1u320j/pulse.gif)

## Build and deploy


To generate static files in the `_site` directory, run:

```
$ jekyll build
```

**Automated deploy**

The `wercker.yml` files contains a job that builds and force pushes the generated `_site` files to the `master` branch on GitHub.

Usually, I keep the source on a separate branch named `source`, and let wercker handle pushing to `master`.


## License

The web fonts are subject to their original licenses. You are welcome to use the other content under the MIT License (where applicable).

[MIT](http://nishanths.mit-license.org). Copyright © 2016 [Nishanth Shanmugham](https://github.com/nishanths).
