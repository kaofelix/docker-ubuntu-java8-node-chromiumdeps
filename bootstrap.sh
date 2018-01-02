#!/usr/bin/env bash

# Install Java 8
apt-get update
apt-get install -y software-properties-common debconf-utils
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
add-apt-repository -y ppa:webupd8team/java

apt-get update
apt-get install -y --force-yes oracle-java8-installer &&  rm -rf /var/cache/oracle-jdk8-installer

# Chromium dependencies
apt-get install -y gconf-service \
                   libasound2 \
                   libatk1.0-0 \
                   libc6 \
                   libcairo2 \
                   libcups2 \
                   libdbus-1-3 \
                   libexpat1 \
                   libfontconfig1 \
                   libgcc1 \
                   libgconf-2-4 \
                   libgdk-pixbuf2.0-0 \
                   libglib2.0-0 \
                   libgtk-3-0 \
                   libnspr4 \
                   libpango-1.0-0 \
                   libpangocairo-1.0-0 \
                   libstdc++6 \
                   libx11-6 \
                   libx11-xcb1 \
                   libxcb1 \
                   libxcomposite1 \
                   libxcursor1 \
                   libxdamage1 \
                   libxext6 \
                   libxfixes3 \
                   libxi6 \
                   libxrandr2 \
                   libxrender1 \
                   libxss1 \
                   libxtst6 \
                   ca-certificates \
                   fonts-liberation \
                   libappindicator1 \
                   libnss3 \
                   lsb-release \
                   xdg-utils \
                   wget

# Nodejs/npm
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install -y nodejs

rm -rf /var/lib/apt/lists/*
