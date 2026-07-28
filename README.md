# Dotfiles

## Setup

```
$ git init --bare ~/.dotfiles
$ alias dotfiles '/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
$ dotfiles config status.showUntrackedFiles no
```

## Replication

```
$ git clone --bare <git-repo-url> $HOME/.dotfiles
$ alias dotfiles '/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
$ dotfiles checkout
$ dotfiles config --local status.showUntrackedFiles no
```

## Resources

[https://wiki.archlinux.org/title/Dotfiles](https://wiki.archlinux.org/title/Dotfiles)
