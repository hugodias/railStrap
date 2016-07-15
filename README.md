# RailStrap v5

RailStrap is a boilerplate to build incredible fast ruby on rails applications from scratch.

This stack includes:

## Quick start

* Clone the git repo - `git clone https://github.com/hugodias/railStrap.git` - or [download it](https://github.com/hugodias/railStrap/zipball/master)

* Run `bundle install`
* Run `rake db:migrate`

Then run your server
<pre>
rails s
</pre>

Check at [http://localhost:3000](http://localhost:3000)

## Requirements

* Rails 5
* Ruby 2.3.0
* Imagemagick (For uploading pictures)

## Features
* Sign up
* Sign in
* Remember password
* User profile (update profile, change picture)
* Authorization (Admin | User)
* Dashboards
* Create/Update/Delete user crud for admins

## Technologies

### Back-end
* Ruby on Rails 5
* Puma
* Clearance
* Pundit
* Carrierwave
* Responders

### Front-end
* Bower Rails
* Bootstrap 4
* Turbolinks 5
* SimpleForm
* Vue.js

### Testing
* RSpec
* Capybara
* Capybara-webkit
* FactoryGirl
* SimpleCov

### Development
* Guard
* Pry
* Better Errors

### Databases support

* SQLite (Default)
* Postgresdb [https://github.com/hugodias/railStrap/tree/postgresdb](https://github.com/hugodias/railStrap/tree/postgresdb)

---

## License

### Major components:

* jQuery: MIT/GPL license
* Modernizr: MIT/BSD license
* Normalize.css: Public Domain
* Twitter bootstrap: [Apache License, Version 2.0 (the "License")](http://www.apache.org/licenses/LICENSE-2.0)
* Ruby on Rails: MIT license

### Everything else:

The Unlicense (aka: public domain)
