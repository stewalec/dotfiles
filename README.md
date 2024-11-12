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
cd $HOME/.dotfiles
dotfiles submodule update --init --recursive
dotfiles config --local status.showUntrackedFiles no
rm ~/.config/fish/config.fish ~/.config/user-dirs.dirs
dotfiles checkout
./move-in.sh
```

# Reference

- [https://www.ackama.com/articles/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/](https://www.ackama.com/articles/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/)
