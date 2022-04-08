## What's This?

About a year ago, I was upgrading to a new Mac. One of the nightmares of switching are all the local environments. Running npm install only does so much. While it doesn't help for setting up things like SSH, I have a bunch of bash commands that I consistently use.

At the same time, I stumbled onto a dotfiles repo that Wes Bos created. He had made it as a way to share his settings with others. In addition to grabbing a couple lines of code, I realized I could put things like my bash shortcuts, VS Code settings, or eslint settings in a repo. Then I could symlink them. I'd have everything in one place and also version control over them.

Some of what's in here is project specific to what I'm working on. The repo is basically a checklist of things for me to go down whenever I'm setting up a new Mac. But since this is on GitHub, obviously feel free to take anything you like. If you want to reach me, @colinlord on Twitter is probably the best way.

## Symlink Downloads Folder To iCloud

```
sudo rm -rf ~/Downloads
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/Downloads ~/Downloads
```

## Symlink Bash Profile To This Repo

```
ln -s ~/Repos/dotfiles/.bash_profile ~/
```

## Use ESLint settings from Wes Bos

His documentation: https://github.com/wesbos/eslint-config-wesbos

```
npx install-peerdeps --global eslint-config-wesbos
ln -s ~/Repos/dotfiles/.eslintrc ~/
```

### If Using Oh-My-Zsh, add the following to .zshrc

```
# Import my Bash aliases
source ~/.bash_profile
```

## Symlink Hyper Settings To This Repo

```
ln -s ~/Repos/dotfiles/.hyper.js ~/.hyper.js
```

## Symlink EditorConfig to top of Repos Directory

We do this so that all projects can pull from the same EditorConfig file.

```
ln -s ~/Repos/dotfiles/.bash_profile ~/Repos/.editorconfig
```
