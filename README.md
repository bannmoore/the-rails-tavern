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
bin/rails generate controller Characters
bin/rails generate controller Sheets
```

Create a controller (with scaffolding):

```sh
bin/tails generate scaffold_controller character name:string character_class:string
```

View routes:

```sh
bin/rails routes
```

Create a model:

```sh
bin/rails generate model Character name:string character_class:string
bin/rails generate model Sheet level:integer character:references
```

Run db migrations:

```sh
bin/rails db:migrate
```

Run tests:

```sh
bin/rails test [file]
```

Generate unit test:

```sh
bin/rails generate test_unit:model character name:string character_class:string
```

Generate system test:

```sh
bin/rails generate system_test characters
```

Generate integration test:

```sh
bin/rails generate integration_test character_flow
```

Generate test scaffold code for an existing controller:

```sh
bin/rails generate test_unit:scaffold character
```

View test logs:

```sh
tail -f log/test.log
```

## Troubleshooting

["can't activate sqlite"](https://stackoverflow.com/questions/54527277/cant-activate-sqlite3-1-3-6-already-activated-sqlite3-1-4-0)

```sh
gem uninstall sqlite
# update Gemfile: `gem 'sqlite3'` -> `gem 'sqlite3', '~>1.3.6'`
bundle update
```
