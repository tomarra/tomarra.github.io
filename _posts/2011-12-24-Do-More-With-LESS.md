---
layout: post
title:  "Do More With LESS"
date:   2011-12-24
tags: web css less
---
I have been doing some digging on new web frameworks and have found a few worth mentioning. The first being a new stylesheet “language” called [LESS](http://lesscss.org/). The basis of LESS is that CSS on its own it too stiff and you end up having to write a lot of styles in order to get what you want done. LESS gives the ability to add variables, mixins, and even functions within your CSS. You create .less files that get compiled down to .css files that are then read by the browser. The nice thing is that the .less files can be compiled down at different times depending on your needs.

Some developers will compile the files down during development and check in the .css files along with the .less files. Another option, my personal favorite, is to get your server to compile it when requested and then cache it. While this requires something like a rails or django server it makes your life as developer much easier.
