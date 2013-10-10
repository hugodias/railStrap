source 'https://rubygems.org'

ruby "2.0.0"
gem 'rails', '4.0.0'

gem 'journey', :git => 'git://github.com/rails/journey.git'
gem 'arel'
gem 'activerecord-deprecated_finders', :git => 'git://github.com/rails/activerecord-deprecated_finders.git'


# ORM
gem "pg", :group => :production

group :development, :test do
  gem "sqlite3"
end

gem 'json'

# For using protected attributes
gem 'protected_attributes'

# Server
gem 'unicorn'

# Template Engine
gem 'haml-rails'

gem "bcrypt-ruby", :require => "bcrypt"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sprockets-rails'
  gem 'sass-rails', :git => 'git://github.com/rails/sass-rails.git'
  gem 'coffee-rails', :git => 'git://github.com/rails/coffee-rails.git'

  # gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '1.0.3'
end

gem 'jquery-rails'
