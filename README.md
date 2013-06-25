[![Build Status](https://api.travis-ci.org/hugodias/railStrap.png)](https://travis-ci.org/hugodias/railStrap)
# RailStrap

RailStrap is a Front-end / Back-end template using HTML5 Boilerplate, Twitter Bootstrap, Ruby on Rails (4.0.0) and Ruby 2.0.0 with a powerful authentication system for building ruby on rails websites in seconds.

## Quick start

Clone the git repo - `git clone https://github.com/hugodias/railStrap.git` - or [download it](https://github.com/hugodias/railStrap/zipball/master)

Go to your railStrap folder and run install
<pre>
sh install.sh
</pre>

Then run your server
<pre>
rails s
</pre>

Check at [http://localhost:3000](http://localhost:3000)

You can try loggin in with `administrator@railstrap.com / 123123`

## Features

##### [HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate/)

##### [Twitter Bootstrap](http://twitter.github.com/bootstrap/index.html)

##### [HAML Template Engine](http://haml.info/)

##### [Ruby on Rails 4.0.0](http://rubyonrails.org/)
* Security Authentication system
* Users CRUD


### Databases support

* SQLite (Default)
* Postgresdb [https://github.com/hugodias/railStrap/tree/postgresdb](https://github.com/hugodias/railStrap/tree/postgresdb)


### Best pratices
---
Change the cookie secret token at
`config/initializers/secret_token.rb`
<pre>
# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
RailStrap::Application.config.secret_token = 'YOUR-NEW-TOKEN-HERE'
</pre>

Thanks [pringles](http://news.ycombinator.com/user?id=pringles) for the tip


#### Todo
---

* Include supports for redis and mongodb
* Create a feature to remind the user password
* Significantly reduce the amount of files from the repository, to be an extension of application and not the entire application.

## License

### Major components:

* jQuery: MIT/GPL license
* Modernizr: MIT/BSD license
* Normalize.css: Public Domain
* Twitter bootstrap: [Apache License, Version 2.0 (the "License")](http://www.apache.org/licenses/LICENSE-2.0)
* Ruby on Rails: MIT license

### Everything else:

The Unlicense (aka: public domain)
