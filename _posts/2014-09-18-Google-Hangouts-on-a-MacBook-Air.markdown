---
layout: post
title:  "Google Hangouts on a MacBook Air"
date:   2014-09-18
banner_image: Hangouts_On_Air.png
tags: software chrome hangouts mac
---
I have been using my MacBook Air full time now for a little over a month. Most things have been working very well with one exception, Google Hangouts.

I only use Hangouts to chat with a few friends but it’s a great service with one giant catch, you have to run Chrome. Well newsflash, Chrome on a 2011 MacBook Air is a resource hog. I switched to using Safari and gained over an hour of battery life, no joke. So with that I was on the search for the best stand alone Hangout’s app on Mac. Long story short, there isn’t one. Google never released a real Hangouts API so there are no app’s besides the ones they wrote which limits you to a Chrome extension on desktop.

<!--more-->

Option 1 – Adium

I used Adium way back in the AIM day’s and remembered that it had Jabber/Google Talk support. Sure enough after downloading and setting it up it was working like a charm for basic messaging. But the real power of Hangouts is the auto syncing that it does when you chat on one device and come back to your main one. Since there is no API Adium can’t support this. So while it’s a good basic option I went searching for another option.

Option 2 – Fluid App

I did some searching and noticed that people were making a standalone Hangouts app based on Fluid. Seemed easy enough and made sense so I gave it a shot. Making the app was simple but when it started running there were rendering issues and I wasn’t able to see my friends list or chats. Bust.

Option 3 – Stand Alone Chrome

So back to doing some more searching and I stumble across [this](https://www.lessannoyingcrm.com/blog/2010/08/149/Create+application+shortcuts+in+Google+Chrome+on+a+Mac) site. It contains a script that makes a copy of Chrome, gives it a custom name and icon and only turns on the bare minimum to get pages rending and working. I set it up and it seemed to work perfectly. When you look at Activity Monitor you see the process that is running as Chrome but it doesn’t seem to be hogging memory and CPU cycles like the full app does.
