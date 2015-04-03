# Posts Manager
[![Build Status](https://travis-ci.org/zulaica/posts_manager.svg)](https://travis-ci.org/zulaica/posts_manager)

Posts Manager is a simple web application that allows a user to manage post entries (blog, updates, etc.). It is built with Ruby on Rails, which you will need in order to install. [See it in action on Heroku](https://postsmanager.herokuapp.com/).

## Installation
1. Clone this repository.
1. Drop into the directory.
1. Run Bundler.
1. Make sure PostgreSQL is running.
1. Create database tables.
1. Start the Rails server.
1. Point your browser to [http://localhost:3000/](http://localhost:3000/)
1. Enjoy!

```
$ git clone https://github.com/zulaica/posts_manager.git
$ cd posts_manager
$ bundle
$ postgres
$ rake db:create db:migrate
$ rails server
```

## To Do
- Finish commenting system.
- Create user types.
- Needs stronger user session authentication.

## Credits
Posts Manager is written and maintained by [David Zulaica](http://zulaica.info).

## License
Licensed under GNU GPL v2.0
