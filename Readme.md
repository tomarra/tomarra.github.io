# TomArra.com

<!--[![Build Status](https://travis-ci.org/tomarra/tomarra.com.svg?branch=master)](https://travis-ci.org/tomarra/tomarra.com)-->

## About
The repo for my personal website. The site is built on [Jekyll](http://jekyllrb.com) and is running a modified version of the [Slate theme](https://github.com/jasoncostello/slate). The actual site is hosted through GitHub Pages and can be accessed by navigating to [http://www.tomarra.com](http://www.tomarra.com).

## Run Locally
A lot of this is covered in the main GitHub help guide which can be found [here](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/)

1. Make sure your running Ruby 2.1.0 or higher
   * If not install RVM - `curl -sSL https://get.rvm.io | bash -s stable --ruby`. This will take a while as it will setup RVM and install the latest stable version of Ruby and rubygems. After the install it's best to restart the terminal to pickup the changes.
2. Check to see if you have bundler - `bundle help`
   * If you get an error install bundle via gem - `gem install bundler`
3. From the workspace install the needed dependencies via bundler - `bundle install`
4. To build and run the site just execute `bundle exec jekyll serve` and then open your browser to [http://localhost:4000](http://localhost:4000)
