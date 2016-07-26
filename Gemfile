source "https://rubygems.org"

gem "rails", "~> 5.0.0"
gem "sqlite3"
gem "puma", "~> 3.0"
gem "uglifier", ">= 1.3.0"
gem "jbuilder", "~> 2.5"
gem "responders"
gem "clearance"
gem "carrierwave"
gem "pundit"
gem "good_services"

##
# Front-end Helpers
##
gem "coffee-rails", "~> 4.2"
gem "sass-rails", "~> 5.0"
gem "jquery-rails"
gem "turbolinks", "~> 5"
gem "simple_form"
gem "bower-rails", "~> 0.10.0"

group :test do
  gem "simplecov", require: false
  gem "database_cleaner"
  gem "shoulda-matchers", "~> 3.1"
end

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", platform: :mri
  gem "rspec-rails", "~> 3.5"
  gem "capybara"
  gem "factory_girl_rails"
  gem "dotenv-rails"
  gem "letter_opener"
  gem "launchy"
  gem "pry-rails"
  gem "binding_of_caller"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "web-console"
  gem "listen", "~> 3.0.5"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"

  gem "guard-bundler"
  gem "guard-rails"
  gem "guard-rspec"
  gem "spring-commands-rspec"
  gem "rb-fchange", :require=>false
  gem "rb-fsevent", :require=>false
  gem "rb-inotify", :require=>false
  gem "terminal-notifier-guard"
  gem "better_errors"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
