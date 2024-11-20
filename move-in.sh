#!/bin/sh

# WORK IN PROGRESS
# HAVE NOT TESTED THIS SCRIPT

set -e

PKGS="codium gcr keepassxc podman thunderbird rclone rsnapshot vim"

# $HOME cleanup
rm -rf ~/Desktop ~/Public ~/Templates
for f in Documents Downloads Music Pictures Videos; do
    lowercase=$(echo $f | tr '[A-Z]' '[a-z]')
    mv ~/$f ~/$lowercase
done

# sddm autologin
sudo tee -a /etc/sddm.conf.d/autologin.conf > /dev/null <<EOF
[Autologin]
User=$USER
Session=sway.desktop
EOF

# add ~/bin and ~/.local/bin to fish $PATH
mkdir -p ~/.local/bin
fish -c "fish_add_path ~/.local/bin"
fish -c "fish_add_path ~/bin"

# vscodium
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/yum.repos.d/vscodium.repo

# install packages
sudo dnf install $PKGS

# gcr
systemctl --user enable gcr-ssh-agent.socket
systemctl --user start gcr-ssh-agent.socket

# install joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
rm -rf ~/JoplinBackup

# reboot
echo "Install script complete! Please reboot your machine."
echo "Reboot now? [Y/n] "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then 
    reboot
else
    echo "Goodbye!"
fi
