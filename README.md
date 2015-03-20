# Posts Manager
Posts Manager is a simple web application that allows a user to manage post entries (blog, updates, etc.). It is built with Ruby on Rails, which you will need in order to install.

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
$ git clone https://github.com/zulaica/rails_blog_app.git
$ cd rails_blog_app
$ bundle
$ postgres
$ rake db:create db:migrate
$ rails server
```

## To Do
- Finish commenting system.

## Credits
Posts Manager is written and maintained by [David Zulaica](http://zulaica.info).

## License
Licensed under GNU GPL v2.0
