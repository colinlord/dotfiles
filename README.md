## What's This?

About a year ago, I was upgrading to a new Mac. But one of the nightmares of switching are all the local environments. Running npm install only does so much. While it doesn't help for setting up things like SSH, I have a bunch of bash commands that I consistently use.

At the same time, I stumbled onto a dotfiles repo that Wes Bos created. He had made it as a way to share his settings with others. In addition to grabbing a couple lines of code, I realized I could put things like bash shortcuts, VS Code settings, or eslint settings in a repo, symlink them, and I'd have everything in one place.

Some of what's in here is project specific to what I'm working on. But since this is on GitHub, obviously feel free to take anything you like. If you want to reach me, @colinlord on Twitter is probably the best way.


## Symlink Bash Profile To This Repo

```
ln -s ~/Repos/dotfiles/.bash_profile ~/
```

## Use ESLint settings from Wes Bos

```
npx install-peerdeps --global eslint-config-wesbos
ln -s ~/Repos/dotfiles/.eslintrc ~/
```

### If Using Oh-My-Zsh, add the following to .zshrc

```
# Import my Bash aliases
source ~/.bash_profile
```


## Symlink Visual Studio Code Settings To This Repo

There is also a [plugin](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) that supports syncing settings using GitHub Gists. Since I have other files I'm syncing beyond Visual Studio Code, I prefer using my dotfiles repo. But this is worth keeping an eye on.

```
ln -s /Users/colin.lord/Repos/dotfiles/vscode-settings.json /Users/colin.lord/Library/Application\ Support/Code/User/settings.json
ln -s /Users/colin.lord/Repos/dotfiles/vscode-snippets/ /Users/colin.lord/Library/Application\ Support/Code/User/snippets
```


## Symlink Sublime Text Settings To This Repo

```
ln -s /Users/colin.lord/Repos/dotfiles/Preferences.sublime-settings /Users/colin.lord/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
```


## Symlink Hyper Settings To This Repo

```
ln -s /Users/colin.lord/Repos/dotfiles/.hyper.js /Users/colin.lord/.hyper.js
```


## Symlink EditorConfig to top of Repos Directory

We do this so that all projects can pull from the same EditorConfig file.

```
ln -s ~/Repos/dotfiles/.bash_profile ~/Repos/.editorconfig
```
