---
layout: post
title: "Apple is Quietly Killing iPad only Applications"
date: 2014-09-26
image: Universal_Apps.png
tags: software apple
---

_Disclaimer: I’m going to be talking about the future of a platform/applications that I have used for 7+ years but only have developed for the past month and a half. That being said I may have a few details wrong. Feel free to tweet me if you find issues._

I have spent the last week with a new iPhone 6 and overall it’s been great, minus one issue. Scaled up apps. They look horrible and the keyboard scales up which makes it feel even worse. This prompted me to make sure that my demo apps support the new screen sizes and so I dug into what it takes for developers to add this support. Long story short, if you have kept up with Apple’s design guides it’s easy, if not it’s going to be hard.

Not long after that I stumbled upon this tweet which got me thinking.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">I haven’t felt any need to use my ỉPad since Friday. Just a note to ỉPad only apps.</p>&mdash; macdrifter (@macdrifter) <a href="https://twitter.com/macdrifter/status/514793358926282752">September 24, 2014</a></blockquote> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

Now let’s take a step back. Part of this guy’s comment/situation is that he just got a brand new device, he is excited and is using it for everything. Totally normal. But when I saw this I was just previously thinking about the 6 Plus and the “iPad like” UI that it is being shown for multiple applications. Apple is starting to blur the line between iPhone and iPad but not without a decent plan for developers to evolve with them.

We have to go back to iOS6 and Xcode 5 to find the feature that started to lay the groundwork for this one, [Auto Layout](https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/AutolayoutPG/). At first this new way of doing UI layout seemed pretty foreign to me. After spending a week or so learning and playing around with it many things started to make sense. The whole point is to have a way to morph a view for a different size screen. When this came out we only had a few screen sizes for iOS devices so there must be more to the story.

The other feature that Apple implemented a while ago to help with this vision is the [Split View Controller](https://developer.apple.com/documentation/uikit/uiviewcontroller/1623187-splitviewcontroller). On iPad’s this is a huge aspect of basic applications so that they can better utilize the big screen space. And of course during the Apple keynote when showing off the iPhone 6 Plus we saw applications using a split view controller on a non-iPad device. This was the first time this was seen and immediately the press was all over it.

The application that was shown during this demo was one of the stock applications, Messages. After seeing that my first reaction was “Holy cow, Messages has just became a universal application”. I can’t think that Apple is making separate versions of the application for iPhone vs. iPad especially given the new API’s they have introduced in the last few releases. This must be the way they want applications to go. You no longer make a iPhone version or iPad version. You make a truly universal application that supports any screen size that could possibly come out of the Apple labs and everything just works.

So what does this mean for users? Hopefully not much. Apps should continue to work and update and hopefully advance in feature set (and supported resolutions). But for developers the story is much bigger. When designing applications (and specifically UI’s) we need to make a conscious effort to design not for just one screen size. This is something Android developers have had to deal with for years. The one benefit that iOS developers have in this arena is that Apple has been looking out for them and setting up the platform to handle it in the best possible way.
