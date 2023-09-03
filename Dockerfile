FROM ubuntu:22.04
LABEL  maintainer="Aaron Nielsen - apn@apnielsen.com"

RUN apt-get update
RUN apt-get install -y wget xdg-utils

# https://askubuntu.com/questions/405800/installation-problem-xdg-desktop-menu-no-writable-system-menu-directory-found
RUN mkdir /usr/share/desktop-directories/

RUN cd /opt
RUN wget https://github.com/JabRef/jabref/releases/download/v5.10/jabref_5.10_amd64.deb
RUN dpkg -i jabref_5.10_amd64.deb