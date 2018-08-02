## What's This?

About a year ago, I was upgrading to a new Mac. But one of the nightmares of switching are all the local environments. Running npm install only does so much. While it doesn't help for setting up things like SSH, I have a bunch of bash commands that I consistently use.

At the same time, I stumbled onto a dotfiles repo that Wes Bos created. He had made it as a way to share his settings with others. In addition to grabbing a couple lines of code, I realized I could put things like bash shortcuts, VS Code settings, or eslint settings in a repo, symlink them, and I'd have everything in one place.

Some of what's in here is project specific to what I'm working on. But since this is on GitHub, obviously feel free to take anything you like. If you want to reach me, @colinlord on Twitter is probably the best way.


## Symlink Bash Profile To This Repo

```
ln -s ~/Repos/dotfiles/.bash_profile ~/
```

### If Using Oh-My-Zsh, add the following to .zshrc

```
# Import my Bash aliases
source ~/.bash_profile
```
