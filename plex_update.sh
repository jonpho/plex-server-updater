#!/bin/bash

# To run type $ ./plex_update.sh

echo Please check plex.tv for the latest version number. What is the latest Plex Version Number?

read plexversion

# Download File from Plex
wget https://downloads.plex.tv/plex-media-server/$plexversion/plexmediaserver_${plexversion}_amd64.deb

# Install File
sudo dpkg -i plexmediaserver_${plexversion}_amd64.deb

# Delete Downloaded Plex File
rm plexmediaserver_${plexversion}_amd64.deb
