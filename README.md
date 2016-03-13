# nishanths.github.io [![wercker status](https://app.wercker.com/status/fba89a110952058b1ed018f98722af1e/s/source "wercker status")](https://app.wercker.com/project/bykey/fba89a110952058b1ed018f98722af1e)

The code that powers the website and blog at [`https://nishanths.github.io`](https://nishanths.github.io).

* [Setup](#setup)
* [Show me something interesting](#show-me-something-interesting)
* [Build and deploy](#build-and-deploy)
* [License](#license)

<img src="http://cl.ly/0U142h3i003v/Screen%20Shot%202016-03-13%20at%2012.51.27%20PM.png" width=600>

## Setup


```bash
# clone the repo
$ git clone <repo-url>

# edit `_config.yml` and other files as needed...

# install dependencies
$ bundle

# serve locally
$ jekyll s
```

The site should now be live at `http://localhost:4000`. Jekyll watches and regenerates files on change.


## Show me something interesting


#### Pulse animation

A green dot pulses when the page is loaded and on hover.

![](http://cl.ly/3x2g3y3A0K37/pulse.gif)

## Build and deploy


To generate static files in the `_site` directory, run:

```
$ jekyll build
```

#### Automated deploy

The `wercker.yml` files defines a job that builds and force-pushes the generated `_site` directed to the `master` GitHub on each commit. 

Usually, I keep the source on a separate branch named `source`, and let wercker handle pushing to `master`.


## License

The web fonts are subject to their original licenses. You are welcome to use the other under the MIT License (where applicable). 

[MIT](https://nishanths.mit-license.org). Copyright © 2016 [Nishanth Shanmugham](https://github.com/nishanths).
