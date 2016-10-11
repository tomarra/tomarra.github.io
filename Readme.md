# TomArra.com

[![Build Status](https://travis-ci.org/tomarra/tomarra.com.svg?branch=master)](https://travis-ci.org/tomarra/tomarra.com)

The repo for my personal website. The site is built on [Jekyll](http://jekyllrb.com) and is running a modified version of the [Slate theme](https://github.com/jasoncostello/slate).

## Development

- Install [Homebrew](http://brew.sh/)
 - `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- Install Ruby
  - `brew install ruby`
  - Restart Terminal
- Make sure your documentation are not installed with Gems
  - `echo "gem: --no-document" >> ~/.gemrc`
- Install dependencies and clone the repo
  - `bundle install`
- From the command line run `jekyll serve` to start generate the files and start up the web server
- Syntax
  - Pages are a mix of Markdown and HTML. Markdown is preferred but if special formatting is needed HTML can be used and mixed with with [Liquid](https://shopify.github.io/liquid/) formatting
  - Stylesheets should be written in [Sass](http://sass-lang.com) and will be turned into generated CSS at build time by Jekyll
  - Javascript should be written in [CoffeeScript](http://coffeescript.org) and will be turned into generated Javascript at build time by Jekyll. Exception to this is third party libraries that are being used.

## Deployment

The whole deployment was figured out based on [this blog post](http://petemichaud.github.io/2013/09/05/multisite-server-jekyll-digitalocean.html) but I am documenting it for myself just incase that pages moves.

Making the assumption that this is using DigitalOcean running Ubuntu 14

- Get dependecies
  - `sudo apt-get update`
  - `sudo apt-get install nginx`
  - `sudo apt-get install curl`
  - `\curl -L https://get.rvm.io | bash -s stable`
- Setup rvm
  - `source ~/.rvm/scripts/rvm`
  - `rvm requirements`
  - `rvm install ruby`
  - `rvm use ruby --defaults`
  - `rvm rubygems current`
- Setup Gems
  - `gem install jekyll`
  - `gem install sinatra`
  - `gem install thin`
  - `gem install json`
  - `gem install jekyll-coffeescript`
  - `gem install therubyracer`
  - `gem install jekyll-paginate`
- Fix NGINX Settings
  - `sudo nano /etc/nginx/nginx.conf`
  - Set `server_names_hash_bucket_size` to 64
- Setup scripts
  - Copy the files in the deployment folder over to the box in the current users home directory.
  - Make the shell scripts runnable
    - `chmod 777 *.sh`
- Create the sites
  - `./new_nginx_server_block.sh tomarra.com`
  - `./new_nginx_server_block.sh git.tomarra.com`
- Setup git subdomain to use the hook
  - Copy the githook over to the git subdomain folder
    - `cp githook.rb /var/www/git.tomarra.com`
  - Edit the git subdomain config to forward to Sinatra. See deployment/git_site_config.txt for the details.
- Setup the Webhook to run on every push
  - In the repo settings go to Webhooks. Create a new webhook to http://git.tomarra.com.
- Startup in tmux
  - `tmux`
  - `ruby /var/www/git.tomarra.com/githook.rb`
  - Detach from the process with Control+b then d. This will keep the process running after disconnecting from the box.
  - To get back into the process just log into the box and do `tmux attach`











  `
