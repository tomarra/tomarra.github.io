---
layout: post
title: "A Fresh iPhone with your Health/Activity Data"
date: 2017-12-2
tags: ios iphone healthkit activity workouts
---

Don't be surprised, I got an iPhone X. 

It was always my policy when I got a new phone to start it fresh. No backups, no restores, just login and start downloading the apps and set the settings that I need. This allowed me to essentially clean up the junk that we all get on our devices after using them for a year or two. 

The last few iPhone's that I upgraded to I was forced to do a local iTunes backup and restore for one main item, keeping my Health and Activity data. With the release of the Apple Watch, and a plethora of 3rd party apps, which sends all of it's data to Health app I have built up an immense amount of data that I don't want to lose. The problem is that with this comes all the old apps and settings from my previous device. A couple days before my iPhone X got delivered I decided to do some homework and see if there was a way around this. Keep my data and send it over to my new device but without the cruft of the old device.

My first option, do everything on the device. I found [this](https://www.macstories.net/ios/health-importer-makes-it-easy-to-move-health-data-between-iphones/) writeup on MacStories on an iOS app called [Health Data Importer](https://itunes.apple.com/us/app/health-data-importer/id1158733998?mt=8). This seemed like the easy way out. A 3rd party app that just exports everything from the Health database, let's you save it as a Zip file and then you import that on the new device. I bought the app and the export worked just fine but I could never get the import to work. During the import step it always crashed. My guess, too many data points and it was all trying to be written at once. When the export process was happening it was counting the data points and my count was well over 1,000,000. So with that being a bust I'm back to the drawing board.

The second option I found seemed a lot more promising right from the start. I found an old (2015) writeup on [how to only transfer Activity and Health app data to a new iPhone](http://www.idownloadblog.com/2015/09/26/how-to-only-transfer-activity-and-health-app-data-to-a-new-iphone/) and noticed right away that it was based off of an iTunes backup. What actually happens is that you install a utility, on your Mac or PC, from a company called [Decipher Tools](https://deciphertools.com). While the sounds like a shady place I figured I would give it a shot. They have a tool called [Activity Transfer](https://deciphertools.com/download-decipher-activity-transfer.html) which uses the iTunes backups on your local machine. Best part, it's free :)

So with this Activity Transfer tool installed on my Mac the process looked like this.

1. Do a local, encrypted backup of my iPhone 7 to my Mac. An encrypted backup is needed to make sure the Health and Activity data is there.
2. Open Activity Transfer and walk through the steps to locate the backup and enter the password to get it unencrypted.
3. Activity Transfer does its magic and essentially strips everything about the backup file except the Health and Activity data.
4. The new "clean" backup it saved back into the iTunes backup location
5. Plug in the new iPhone and do a restore with the new "clean" backup

After the new iPhone restarts and I completed the setup process I had a brand new iPhone X that had all of the Health and Activity from my iPhone 7 with no other changes from a stock iPhone. Exactly what I was looking for.
