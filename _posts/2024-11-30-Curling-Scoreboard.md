---
layout: post
title: New Project - Curling Scoreboard
description: I just can't seem to help myself 🤦‍♂️ Another little side project to help out the curling club and our electronic scoreboards.
date: 2024-11-30
image: Curling-Scoreboard-In-Action.jpg
tags: curling software
---

So I actually started this project a while back, but then it sat on the back burner for a while. The initial commit was actually on May 1, 2023. So time for a little backstory.

## Trying LLM Coding and Prototyping

With all the activity around Large Language Model based “AI’s” over the first 3 months of 2023, I figured I would let a few things settle down before digging in. It would have been fun to be part of the ride, but I didn’t really have a problem that I was looking to solve. That all changed around April 2023 as I thought through a side project for the curling club.

During the 2022 season, we began experimenting with TV-based scoreboards that simply mirrored tablet displays. It’s been a great success, but the original implementation had some issues that I was hoping to help fix. A few things have happened at the club this season that made those enhancements harder to make than originally planned, but opened the door for a rewrite. The only problem, when would I find the time to start a new project? That’s where ChatGPT came in.

I spent a few minutes experimenting with different prompts to see what it could generate for me. Right away, its understanding of Flutter and Dart, my choice for this project, was good enough to get to something functional. Without issues, it could generate compilable and working code, so I moved on to generating an actual prompt to help me get bootstrapped as quick as possible.

```markdown
Lets make a curling scoreboard app using Flutter. Please write the code for the following

- There are two teams, red and yellow. The total scores for each teams should be shown in the correct colors and with large font.
- There should be baseball style scoreboard which should accommodate up to 11 ends. The scoreboard should be displayed from left to right.
- The user should have the ability to enter a score for an end. When entering a score, there should be a popup dialog that allows the user to select a team and then enter a score from 0-8.
- The app should have the ability to track the game time. The time should be formatted to be human readable and increase every second.
- When a score is entered the game time is also captured and displayed next to the score.
- There should be a reset button which allows the entire application to be reset.
```

Not super complicated and it could quickly gave me a response which I put into VSCode and got it running.

Holy crap. I’m less than 30 minutes into working on this and I have a functional app that does what it needs to complete the use case. Yes, it doesn’t look pretty, and the code is not great from a scalability standpoint, but we have a place to start from so quickly. It felt incredibly powerful.

After some manual code adjustments, the result more closely resembled my original vision. Looking back at the original prompt, I can see where I could have made some little tweaks to get closer to this in the first pass. My first actual attempt at coding with an LLM proved to be a valuable learning experience.

![Version 0.0.1]({{site.baseurl}}/images/posts/Curling_Scoreboard-0.0.1.png)
_The very first version of Curling Scoreboard, only 30ish minutes into development._

After this point, I focused on fine-tuning to meet my specifications. Nothing super foundational as that was all laid out for me in that first prompt. It was good enough performance wise to deploy, but it didn’t look like what we wanted on the screen. So between the current scoreboards still working and the curling season wrapping up, this project went back on the shelf.

Fast forward to October 2025. The club is finally ready to reopen after the [facility was completely rebuilt due to a fire](https://www.gofundme.com/f/help-windy-city-curling-recover-from-smoke-water) and I’m being told that the old scoreboard no longer works, so were using the one I created and shared around a bit. 😰 Time to get back to work.

## Jumping Back In

Step one, actually get the layout correct. This took longer than I expected as some of that ChatGPT generated code was just not great. It very much seemed like a student coming out of college wrote it and knew nothing about dynamic layout. But some hacking around and we end up with the first version that is actually usable and looks halfway decent for the people playing and spectators in the warm room.

![Version 0.0.8]({{site.baseurl}}/images/posts/Curling_Scoreboard-0.0.8.png)
_The first useable version that went into "production"_

Now that a working prototype existed, feedback was collected from curlers to guide more updates. There were some simple things that kept coming up, which ended up creating the backlog for work.

- Make the total scores at the top as big as possible. It was just barely readable from the warm room and not legible at all on the YouTube stream.
- Move the Current End number up and make it bigger so you can see where the game is.
- Make all the touch points much bigger for use on the tablet, especially with cold & sometimes stiff hands.
- Have some kind of way to see how you're doing on game time as compared to the suggested time for a game

Perfect, a lot of items but need to knock them out one by one. It didn’t take long to realize that the bad layout code I spoke of earlier also was being felt in the state management of the application as well. Everything was one giant object and I couldn’t break it down to make tiny changes. That led me down almost a full rewrite and restructure of the code to allow for the changes needed. It was a lot of work, but I’m pretty happy with where things landed. While I would have liked to use something like Bloc or Cubit, my use case was so small that just using good old `setState` gets the job done for me.

## The First Real MVP

Given all that work. Here is where we are today

The players start by setting up the game. Only need to select a couple of things to get going.

- Number of Ends: This allows for special events like private parties to have a custom scoreboard of a smaller number of ends or national tournaments to have the standard 10 ends as compared to our 8 that we play in leagues.
- Number of Players: We have both normal team curling and Doubles in our leagues. This is important so we can get the game clock correct as a Doubles game should be quicker. Also want to enforce the blank in doubles switches hammer rule.
- Hammer in 1st End: Knowing this allows for a hammer icon to be shown for the team that currently has hammer.

![Version 0.0.19 Start]({{site.baseurl}}/images/posts/Curling_Scoreboard-0.0.19-Start.png)
_What players see when they are getting ready to start a game_

After getting that set and selecting Start Game you're ready to go! As you can see below, the scoreboard is pretty big and easy to read. The Game Time counts up so you know the total time taken and the +/- clock is where you are in relation to a standard timetable. The goal there is to help all players with the pace of play, which is a constant struggle from club to club.

![Version 0.0.19 In Game]({{site.baseurl}}/images/posts/Curling_Scoreboard-0.0.19-In-Game.png)
_A working scoreboard with a game in progress_

And that’s where I am today. Overall, the feedback from all the curlers has been great and the few tweaks I have made over the last month have made it a great setup for our club and something unique as compared to other facilities. There for sure is more work to be done, but we are at a good stopping point right now. The next feature requests would get live scores and game reports saved to a backend so we can include it in other functions the club has, like our live streams on YouTube, but that’s a project for another time.

If you’re curious about how I wrote this, the code is all [open source and available on GitHub](https://github.com/tomarra/curling_scoreboard_flutter). You can also just experiment with it in your browser at [curlingscoreboard.app](https://curlingscoreboard.app). It’s just deployed as a Flutter Web App and that’s how we run it on the tablets in the club as well.

Good curling! 🥌
