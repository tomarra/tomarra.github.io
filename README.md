# TomArra.com

## About
The repo for my personal website. The site is built on [Jekyll](http://jekyllrb.com) and is running a modified version of the [BlogInn theme](https://justgoodthemes.com/ghost-themes/bloginn/). The actual site is hosted through GitHub Pages and can be accessed by navigating to [http://www.tomarra.com](http://www.tomarra.com).

## Run Locally
A lot of this is covered in the main GitHub help guide which can be found [here](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/)

1. Make sure your running Ruby 2.1.0 or higher
   * If not install RVM - `curl -sSL https://get.rvm.io | bash -s stable --ruby`. This will take a while as it will setup RVM and install the latest stable version of Ruby and RubyGems. After the install it's best to restart the terminal to pickup the changes.
2. Check to see if you have bundler - `bundle help`
   * If you get an error install bundle via gem - `gem install bundler`
3. From the workspace install the needed dependencies via bundler - `bundle install`
4. To build and run the site just execute `bundle exec jekyll serve` and then open your browser to [http://localhost:4000](http://localhost:4000)

## Housekeeping

There are a few things that are automated on the repo in order to make sure everything is in good standing overall.

### Spell Checker

As part of the [PR/CI process](https://github.com/tomarra/tomarra.github.io/blob/master/.github/workflows/pull_request.yaml), a spell checker is ran on the entire codebase. Any errors on the checker should be fixed or added to the [cspell config](https://github.com/tomarra/tomarra.github.io/blob/master/.vscode/cspell.json) so it can pass. All items in the cspell config should be lowercase.

### Link Checker

On a weekly basis there is a action that runs called [Site Link Check](https://github.com/tomarra/tomarra.github.io/actions/workflows/site_link_check.yaml) that checks the links in all `.md` and `.html` files to ensure they are all working. If there are any problems it will also automatically create an issue. Configuration for this is found in the `.lycheeignore` file.

