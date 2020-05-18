---
layout: post
title:  "Don't seed the global random in your package"
date:   2016-02-27 01:43:39 -0600
---

Go has a global random generator that is used when you call functions in the `math/rand` package.

```go
number := rand.Int()
```

As of `go1.6`, it is [seeded to the same value at the start of every program](https://golang.org/src/math/rand/rand.go?#L178), which means that a deterministic sequence of numbers is returned every time the program is run.

<!--more-->

The `Seed` function allows you to introduce randomness by seeding the underlying source.

```go
rand.Seed(time.Now().UnixNano())
```

However, calling `rand.Seed()` modifies the global random that other packages or client programs where your package is being imported into also have access to. **This could lead to confusion and errors, especially if the client program also seeds the global random in a different manner.**

So, if you are making a package that will be used by others, consider creating your own private random number generator. Add a file `random.go` to your package:

```go
package bar

import (
	"math/rand"
	"sync"
	"time"
)

var random *rand.Rand // your private random

func init() {
       random = rand.New(
		&lockedRandSource{
			src: rand.NewSource(time.Now().UnixNano()),
		},
	)
}

// locked to prevent concurrent use of the underlying source
type lockedRandSource struct {
	lock sync.Mutex // protects src
	src  rand.Source
}

// to satisfy rand.Source interface
func (r *lockedRandSource) Int63() int64 {
	r.lock.Lock()
	ret := r.src.Int63()
	r.lock.Unlock()
	return ret
}

// to satisfy rand.Source interface
func (r *lockedRandSource) Seed(seed int64) {
	r.lock.Lock()
	r.src.Seed(seed)
	r.lock.Unlock()
}
```

Now, use you can the variable `random` to generate random numbers for use in your package. This is the approach I use in [go-xkcd](https://github.com/nishanths/go-xkcd), an xkcd API client.

Let me know of your comments or other approaches on [twitter](https://twitter.com/nshanmugham).
