#!/usr/bin/env bash

# Setting up default tools
sudo apt-get update
sudo apt-get install build-essential zlib1g-dev curl git-core sqlite3 libsqlite3-dev
# Setting up rbenv to handle ruby versions
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source .bash_profile
# Configuring ruby to use v2.0.0
git clone git://github.com/sstephenson/ruby-build.git
cd ruby-build/
sudo ./install.sh
rbenv install 2.0.0-p247
# Installing bundler
rbenv rehash
rbenv global 2.0.0-p247
cd /vagrant
sudo apt-get install ruby-bundler
gem install bundler
rbenv rehash
# Installing Rails 4
bundle
sudo apt-get install rails
sudo apt-get install nodejs
gem update --system
gem install rails
rbenv rehash