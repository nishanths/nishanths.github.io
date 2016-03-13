---
layout: post
title:  "Parallel tests in Go"
date:   2016-01-18 01:43:39 -0600
---

Golang surprises me everyday with how beautiful it is. Today, it was [parallel testing](https://golang.org/src/testing/testing.go?s=14868:14890#L410):

```go
import "testing"

func TestMeow(t *testing.T) {
    t.Parallel()
    // test logic here
}

func TestRoar(t *testing.T) {
    t.Parallel()
    // test logic here
}
```

Tests marked with `t.Parallel()` will execute in parallel with other tests also marked with `t.Parallel()`. So the tests `TestMeow()` and `TestRoar()` will run in parallel.

<!--more-->

In case you want to run the tests serially for some reason, you can simply set the `test.parallel` flag from the command-line, instead of commenting out each `t.Parallel()` call.

```
$ go test -test.parallel 1
```
