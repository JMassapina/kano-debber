#!/usr/bin/env bash

# install kano-debber
mkdir -p /home/user/kano-debber
cd /home/user/kano-debber
curl -L -o tmp.tgz https://api.github.com/repos/KanoComputing/kano-debber/tarball/master
tar --strip-components 1 --show-transformed-names -xzvf tmp.tgz
rm tmp.tgz

# install compiled debs from repo
sudo ./prepare-deb.py

# download, build and install make snake
sudo ./kano-debber.py -n snake -dbi

read -p "Install completed, press any key to continue..."


