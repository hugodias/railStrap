# RailStrap

RailStrap is a Front-end / Back-end template using HTML5 Boilerplate, Twitter Bootstrap and Ruby on Rails (3.2.x) with a powerful authentication system for building ruby on rails websites in seconds.

## Quick start

Clone the git repo - `git clone https://github.com/hugodias/railStrap.git` - or [download it](https://github.com/hugodias/railStrap/zipball/master)

Go to your railStrap folder and run
<pre>
sudo bundle install && sudo bundle update
</pre>

Create your database
<pre>
rake db:create
</pre>

Execute rake to create the users database
<pre>
rake db:migrate
</pre>

if you are having getting the following error:
`You have already activated rake 0.9.2.2, but your Gemfile requires rake 0.8.7. Using bundle exec may solve this.` try this
<pre>
bundle exec rake db:migrate
</pre>

Now start the server in your railStrap folder
<pre>
rails s
</pre>

Check at [http://localhost:3000](http://localhost:3000)

## Features

#### [HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate/)
* HTML5 ready. Use the new elements with confidence.
* Cross-browser compatible (Chrome, Opera, Safari, Firefox 3.6+, IE6+).
* Designed with progressive enhancement in mind.
* CSS normalizations and common bug fixes.
* IE-specific classes for easier cross-browser control.
* A default print stylesheet, performance optimized.
* Mobile browser optimizations.
* Protection against any stray `console.log` causing JavaScript errors in IE6/7.
* The latest jQuery via CDN, with a local fallback.
* A custom Modernizr build for feature detection.
* An optimized Google Analytics snippet.
* Apache server caching, compression, and other configuration defaults for Grade-A performance.
* Cross-domain Ajax and Flash.
* "Delete-key friendly." Easy to strip out parts you don't need.
* Extensive inline and accompanying documentation.



#### [Twitter Bootstrap](http://twitter.github.com/bootstrap/index.html)
* Built for and by nerds
* 12-column grid
* Responsive design
* Custom jQuery plugins
* Cross-everything

#### [Ruby on Rails](http://rubyonrails.org/)
* Security Authentication system
* Users CRUD


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