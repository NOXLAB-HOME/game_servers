#!/bin/sh
# create server directory
sudo mkdir /opt/crafty
sudo chown "$USER" /opt/crafty
./gen_default_user.sh
