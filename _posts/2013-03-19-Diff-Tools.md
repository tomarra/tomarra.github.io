---
layout: post
title:  "The difference between diff.tool and diff.guitool"
date:   2013-03-19
banner_image: Git_Logo.png
tags: software git gitextensions p4merge
---
On a daily basis I am using Git on Windows and while I could use the command line for everything I find it much nicer to be able to see the git commit log all the time. After trying a few different tools I found [Git Extensions](https://code.google.com/p/gitextensions/) to be a great Git GUI when pared with P4Merge for diff and merging. But out of the box Git Extensions only supports [P4Merge](http://www.perforce.com/product/components/perforce-visual-merge-and-diff-tools) as a merge tool, not a diff tool. Well it only take a simple change to your .gitconfig file to get it working.

~~~txt
[diff]
tool = p4merge
guitool = p4merge
[difftool "p4merge"]
cmd = "p4merge.exe $LOCAL $REMOTE"
~~~

By default Git Extensions set’s up kdiff3 as the guitool so hitting F3 wont pull up P4Merge. My setting the diff.guitool at P4Merge it all just magically starts working.
