# Posts Manager
[![Build Status](https://travis-ci.org/zulaica/posts_manager.svg)](https://travis-ci.org/zulaica/posts_manager)

Posts Manager is a simple web application that allows a user to manage post entries (blog, updates, etc.). It is built with Ruby on Rails, which you will need in order to install. [See it in action on Heroku](https://postsmanager.herokuapp.com/).

## Requirements
The SMS notification feature is powered by [Twilio](https://www.twilio.com/). You will need to set up your own account with Twilio and set up your credentials in an `.env` file in the following format:
```
TWILIO_ACCOUNT_SID=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
TWILIO_AUTH_TOKEN=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FROM_PHONE_NUMBER=5555555555
TO_PHONE_NUMBER=5555555555
```

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
- ~~Figure out why Twilio isn't authorizing the supplied credentials—at least for me. YMMV.~~ The difference between "TWILIO" and "TWILLIO". That broke my credentials. Gonna headdesk for a few hours and finish this later.
- Finish SMS comment notification.
- Finish commenting system.
- Create user types.
- Add more AJAX.

## Credits
Posts Manager is written and maintained by [David Zulaica](http://zulaica.info).

## License
Licensed under GNU GPL v2.0
