#!/bin/bash
echo 'Welcome to RailsStrap v0.2 install'
echo 
echo

echo '... Updating your bundle in development environment ...'
bundle install --without production

echo '... Creating your database ...'
rake db:create
rake db:migrate

echo '... Creating default admin user ... '
rake db:seed

echo '... Database created... '
echo
echo 'To start your server run: rails s'
echo
echo '... FINISH! ...'

