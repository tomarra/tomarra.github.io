---
layout: post
title:  "New Site Setup"
date:   2016-05-06
tags: site jekyll digitalocean github
---
As usual I got bored with my site's setup and decided to change everything around rather then writing new posts again :/

I found myself not liking the WordPress backend and admin tools as compared to what I like to work in for developing. On top of that I wanted to make just tiny tweaks to my layout but due to the complex WordPress system (not to mention that it's also all PHP based) it was just tough to maintain. So I went off searching for a new setup and around the same time [Jekyll](https://jekyllrb.com/news/2015/10/26/jekyll-3-0-released/) had just released their 3.0 version. Being that its really just text and a Git repo I was hooked right away. All I have to do is check in a change and my site is updated? Perfect!

I got to moving all my posts over to markdown files and started by hosting at [GitHub Pages](https://pages.github.com). Overall its a great resource for simple hosting but as usual I wanted something a bit more custom. After hearing good things about [DigitalOcean](https://www.digitalocean.com) I then happened upon an awesome [example setup](http://petemichaud.github.io/2013/09/05/multisite-server-jekyll-digitalocean.html) and from there it was easy.

So now at this point all I have to do is make a post, check it in to [this GitHub repo](https://github.com/tomarra/tomarra.github.io) and it auto deploys to my DigitalOcean droplet. All of this for just $5 a month. Don't know how to beat that given the flexibility I now have.

*Ninja edit (Feb 2023): The repo name/url has changed since moving to GitHub pages and has been updated to reflect this.*