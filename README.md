
<!-- README.md is generated from README.Rmd. Please edit that file -->
minifyCSS
=========

A binding to the [csso](https://github.com/css/csso) JavaScript library.

Installation
------------

The package can be installed via

``` r
devtools::install_github("jumpingrivers/minifyCSS")
```

Usage
-----

``` r
library("minifyCSS")
```

The main function takes a CSS string input

``` r
input = "* { color: green; }
ul, ol, li { color: blue; }
UL.foo, span.bar { color: red; }"
```

and returns a minified version

``` r
minifyCSS(input)
#> [1] "*{color:green}li,ol,ul{color:#00f}UL.foo,span.bar{color:red}"
```
