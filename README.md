# Move In

To get started, run the below commands:

```
sudo dnf upgrade
sudo dnf install fish git
chsh -s /usr/bin/fish
reboot
```

Then...

```
git clone --bare https://codeberg.org/stewalec/dotfiles $HOME/.dotfiles
alias dotfiles "/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
dotfiles config --local status.showUntrackedFiles no
rm ~/.config/fish/config.fish ~/.config/user-dirs.dirs
dotfiles checkout
dotfiles submodule update --init --recursive
./move-in.sh
```

# Reference

- [https://www.ackama.com/articles/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/](https://www.ackama.com/articles/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/)
