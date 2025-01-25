---
layout: post
title: "Outlook 2011 for Mac and Notification Center"
date: 2014-08-19
image: Outlook_Notifications.png
tags: software
---

I started using my Mac full time (work and personal) and while most things just work right out of the box unfortunately there are always a few quirks. One of these quirks happens to be the notifications from Outlook.

When Office 2011 was released Notification Center on Mac wasn’t out so Microsoft went and implemented their own notification system. At the time this made a lot of sense but fast forward to 2014 and Outlook now looks a little out of date. The notifications are the old Aqua style UI and they don’t collect in the Notification Center drawer.

After doing a bit of searching around I found this AppleScript that does exactly what you would expect. Only real change I had to make to the script (which was also listed in the comments) was to change

```txt
tell application "Microsoft Outlook"
```

to

```txt
tell application id "com.microsoft.Outlook"
```

Seems like this was due to some changes the Microsoft made in the latest office update. Either way, after enabling this script and turning off the Outlook specific e-mail notifications things are working as they should. I’m betting on the fact that this will be the default functionality in the next version of Office for Mac but until then this stopgap works just fine.
