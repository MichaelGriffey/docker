#!/bin/bash

# Make users and group
sudo useradd sonarr -u 13001
sudo useradd radarr -u 13002
sudo useradd lidarr -u 13003
sudo useradd readarr -u 13004
sudo useradd mylar -u 13005
sudo useradd prowlarr -u 13006
sudo useradd qbittorrent -u 13007
sudo useradd jackett -u 13008
sudo useradd overseerr -u 13009
sudo useradd plex -u 13010
sudo useradd sabnzbd -u 13011
sudo useradd jellyseerr -u 13012
sudo useradd bazarr -u 13013
sudo useradd jellyfin -u 1314
sudo useradd audiobookshelf -u 1315

sudo groupadd mediacenter -g 13000

sudo usermod -a -G mediacenter sonarr
sudo usermod -a -G mediacenter radarr
sudo usermod -a -G mediacenter lidarr
sudo usermod -a -G mediacenter readarr
sudo usermod -a -G mediacenter mylar
sudo usermod -a -G mediacenter prowlarr
sudo usermod -a -G mediacenter qbittorrent
sudo usermod -a -G mediacenter jackett
sudo usermod -a -G mediacenter overseerr
sudo usermod -a -G mediacenter plex
sudo usermod -a -G mediacenter sabnzbd
sudo usermod -a -G mediacenter jellyseerr
sudo usermod -a -G mediacenter bazarr
sudo usermod -a -G mediacenter jellyfin
sudo usermod -a -G mediacenter audiobookshelf

# Make directories
sudo mkdir -pv data/config/{audiobookshelf,bazarr,jackett,jellyfin,jellyseerr,lidarr,mylar,overseerr,plex,prowlarr,qbittorrent,radarr,readarr,sabnzbd,sonarr,tautulli}-config
sudo mkdir -pv data/config/audiobookshelf-metadata
sudo mkdir -pv data/{media,torrents,usenet}/{audiobooks,books,comics,movies,music,podcasts,tv}

# Set permissions
sudo chmod -R 775 data/
sudo chown -R $(id -u):mediacenter data/
sudo chown -R audiobookshelf:mediacenter data/config/audiobookshelf-config
sudo chown -R audiobookshelf:mediacenter data/config/audiobookshelf-metadata
sudo chown -R bazarr:mediacenter data/config/bazarr-config
sudo chown -R jackett:mediacenter data/config/jackett-config
sudo chown -R jellyfin:mediacenter data/config/jellyfin-config
sudo chown -R jellyseerr:mediacenter data/config/jellyseerr-config
sudo chown -R lidarr:mediacenter data/config/lidarr-config
sudo chown -R mylar:mediacenter data/config/mylar-config
sudo chown -R overseerr:mediacenter data/config/overseerr-config
sudo chown -R plex:mediacenter data/config/plex-config
sudo chown -R prowlarr:mediacenter data/config/prowlarr-config
sudo chown -R qbittorrent:mediacenter data/config/qbittorrent-config
sudo chown -R radarr:mediacenter data/config/radarr-config
sudo chown -R readarr:mediacenter data/config/readarr-config
sudo chown -R sabnzbd:mediacenter data/config/sabnzbd-config
sudo chown -R sonarr:mediacenter data/config/sonarr-config
