# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Usage

Start the server:

```sh
bin/rails server
```

Create a controller:

```sh
bin/rails generate controller Welcome index
```

## Troubleshooting

["can't activate sqlite"](https://stackoverflow.com/questions/54527277/cant-activate-sqlite3-1-3-6-already-activated-sqlite3-1-4-0)

```sh
gem uninstall sqlite
# update Gemfile: `gem 'sqlite3'` -> `gem 'sqlite3', '~>1.3.6'`
bundle update
```
