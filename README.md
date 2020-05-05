# Mini-Twitter app

Ruby on Rails app with Twitter-like microposts and status feed of posts from followed users.

## Getting started

To get started with the app, first clone the repo and `cd` into the directory:

```
$ git clone https://github.com/ma-thibaud/sample-app.git
$ cd sample_app
```

Install the dependencies:

```
$ yarn install
```

Then install the needed gems:

```
$ bundle install
```

Next, reset/migrate the database and run the seed program:

```
$ rails db:migrate db:seed
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

You can login with the following user created in the seed:
- email: example@mini-twitter.org
- password: foobar
