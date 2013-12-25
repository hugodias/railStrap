# RailStrap v4

[Demo](http://railstrap03.herokuapp.com/)

RailStrap is a Front-end / Back-end template using HTML5 Boilerplate, Twitter Bootstrap 3, Ruby on Rails (4.0.0) Devise ( Auth ) and Ruby 2.0.0.

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

* Rails 4
* Ruby 2.0.0
* Imagemagick (For uploading pictures)
* Vagrant (Optional)


## Features

##### [HTML5 Boilerplate](https://github.com/h5bp/html5-boilerplate/)

##### [Twitter Bootstrap 3](http://twitter.github.com/bootstrap/index.html)

##### [HAML Template Engine](http://haml.info/)

##### [Ruby on Rails 4.0.0](http://rubyonrails.org/)
* Devise
* Paperclip ( User profile picture )


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


#### Vagrant
---
RailStrap has a *Vagrant* file to create your own Virtual Machine for development.

To get started you need to have [Vagrant](http://www.vagrantup.com) and [Virtal Box](https://www.virtualbox.org/) instaled.

After that you just need to start your VM:
<pre>vagrant up</pre>

##### Bonus
After that you have a Ubuntu server to work, but this server isn't configured to work with rails yet! :( So i'm leaving here one virtual box image with Ruby 2.0.0 (rbenv) and Rails 4 pre-configured.

To install this server just follow this steps:

* Download the server image here: [link](https://mega.co.nz/#!Fsd0Tbrb!Ud68qgxpD9Av8VxdrVNPtCWciyh_DosXCopDWJksg4M
)
* Place the image that you downloaded in railStrap repository
* In railStrap directory run `vagrant box add railStrapMachine ubuntuRails4Ruby2.box virtualbox`
* Run `vagrant box list` and this new machine should be in that list
* Now in `Vagrantfile` change `config.vm.box="precise32"` to `config.vm.box="railStrapMachine"`
* To get your machine up run `vagrant up`

And its done ! Your vagrant vm now has Ruby 2.0.0 and Rails 4 ready to go.

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
