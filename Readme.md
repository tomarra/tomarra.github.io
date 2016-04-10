# TomArra.com

[![Build Status](https://travis-ci.org/tomarra/tomarra.com.svg?branch=master)](https://travis-ci.org/tomarra/tomarra.com)

The repo for my personal website. The site is built on [Jekyll](http://jekyllrb.com) and is running a modified version of the [Slate theme](https://github.com/jasoncostello/slate).

## Development

- Install Jekyll, Jekyll-Coffeescript and clone the repo
  - `gem install jekyll`
  - `gem install jekyll-coffeescript`
- From the command line run `jekyll serve` to start generate the files and start up the web server
- Syntax
  - Pages are a mix of Markdown and HTML. Markdown is preferred but if special formatting is needed HTML can be used and mixed with with [Liquid](https://shopify.github.io/liquid/) formatting
  - Stylesheets should be written in [Sass](http://sass-lang.com) and will be turned into generated CSS at build time by Jekyll
  - Javascript should be written in [CoffeeScript](http://coffeescript.org) and will be turned into generated Javascript at build time by Jekyll. Exception to this is third party libraries that are being used.

## Deployment
