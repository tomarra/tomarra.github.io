---
layout: post
title: New Project - Curling Scoreboard
description: I just can't seem to help myself 🤦‍♂️ Another little side project to help out the curling club and our electronic scoreboards.
date: 2024-11-30
image:
tags: curling software
---

So I actually started this project a while back but then it sat on the back burner for a while, the initial commit was actually on May 1, 2023. So time for a little backstory.

With all the activity around Large Language Model based “AI’s” over the first 3 months of 2023 I figured I would let a few things settle down before starting to dig in. Overall it would have been fun to be part of the ride but I didn’t really have a problem that I was looking to solve. That all changed a couple weeks back as I started to think through a side project for the curling club.

In the 2022 season we started experimenting with TV based scoreboards that are simply screen mirroring a tablet display. Overall its been a great success but the original implementation had some issues that I was hoping to help fix. A few things have happened at the club this season that made those enhancements harder to make than originally planned but opened the door for a rewrite. The only problem, when would I find the time to start a new project? That’s where ChatGPT came in.

I spent a few minutes playing around with different prompts to see what it could generate for me. Right away it was clear that its understanding of Flutter and Dart, my choice for this project, was good enough to get to something functional. Without issues it was able to generate compilable and working code so I moved on to generating an actual prompt to help me get bootstrapped as quick as possible.

```markdown
Lets make a curling scoreboard app using Flutter. Please write the code for the following

- There are two teams, red and yellow. The total scores for each teams should be shown in the correct colors and with large font.
- There should be baseball style scoreboard which should accommodate up to 11 ends. The scoreboard should be displayed from left to right.
- The user should have the ability to enter a score for an end. When entering a score, there should be a popup dialog that allows the user to select a team and then enter a score from 0-8.
- The app should have the ability to track the game time. The time should be formatted to be human readable and increase every second.
- When a score is entered the game time is also captured and displayed next to the score.
- There should be a reset button which allows the entire application to be reset.
```

Not super complicated and it was able to quickly gave me a response which I put into VSCode and got it running.

Holy crap. I’m less than 30 minutes into working on this and I have a functional app that does what it needs to complete the use case. Yes it doesn’t look pretty and the code is not great from a scalability standpoint but we have a place to start from so quickly which felt incredibly powerful.

After a little bit of manual hacking on the code I had something that was looking much closer to what I was originally thinking in my head. Looking back at the original prompt I can see where I could have made some little tweaks to get closer to this in the first pass but that’s a good learning experience overall.
