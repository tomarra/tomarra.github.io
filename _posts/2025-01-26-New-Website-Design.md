---
layout: post
title: New Website Design
description: Time for a fresh coat of paint and some updates across the board.
date: 2025-01-26
tags: website
---

What happens when you end up [with time on your hands](https://tomarra.com/2025/01/13/Moving-On-From-VGV.html)? Well, you decide to actually pay attention to the website you have neglected for a while 😂.

## Theme

In all seriousness, it was time for a theme update as the previous one had been around for quite some time and web design has evolved. I did some searching around and landed on the [Joseph theme](https://jekyllthemes.io/theme/joseph-blog-jekyll-theme). It has a lot of the same features that I had in the previous layout so it made it pretty easy to drop in to my current repo. Add that with a few new features that I would get for free, like light/dark mode switching and easy search, and it was a quick decision to make.

I had to spend a bit of time getting things updated though, and there was one feature that I have always wanted to implement and never found the time to.

## Jekyll Updates

First thing I noticed, the new theme slowed down page generation during development a lot. With the old theme, it was a couple seconds, with the new theme usually over thirty. That’s just not acceptable. How to get it back down? Move on up to Jekyll 4. That unfortunately came with two issues: deployments on GitHub Pages and deprecation warnings.

The deployment I had set up before was just based on changes to the `main` branch. I discovered that the GitHub Pages environment for these deploys are currently locked to an older version of Jekyll. You can still update beyond that, but then you have to take deployments into your own hands. Well, some [GitHub Actions](https://github.com/tomarra/tomarra.github.io/blob/main/.github/workflows/jekyll_deploy.yml) to the rescue and that’s now taken care of.

### Deprecation

This one took longer than I expected. In [moving up to Jekyll 4](https://jekyllrb.com/docs/upgrading/3-to-4/), you also end up bumping the versions of [SCSS](https://sass-lang.com) that is being used and they are going through some changes. I’m still not 100% sure I got all the changes correct, but at this point it builds and deploys so I’m not complaining. I more wanted to call this out as it’s probably going to be something that comes for everyone else using GitHub Pages in the future so be ready!

## New Feature - 🔗 Link Posts

One thing that I always liked from [Daring Fireball](https://daringfireball.net) was the ability for some posts to just be simple links out to other pages. No need to have a full post just to share a link and have a tiny comment. But the key is actually making those posts here rather than something like Bluesky/Twitter/Threads.

My implementation of this consists of:

- The title is pre-pended with a link emoji 🔗
- The title link directly loads to the linked page instead of a post page on my website
- There is a “permalink” option shown if you want to link to the post page, but it’s not the primary way of interacting with a link post.

I’m pretty happy with this so far, but time will tell if I actually keep using it as intended.

## What's Next?

Time to actually start posting here again 🙂. Let's see if I can get back on the horse.
