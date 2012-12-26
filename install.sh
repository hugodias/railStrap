#!/bin/bash
echo 'Welcome to RailsStrap v0.2 install'
echo 
echo '-- Press some key to continue --'
read key
echo

echo '... Updating your bundle ...'
bundle install

echo '... Creating your database ...'
rake db:create
rake db:migrate

echo '... Creating default admin user ... '
rake db:seed

echo '... Database created. Starting server ... '
rails s

