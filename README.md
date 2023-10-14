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

## Deployment commands
### Create project
```rb
rails new baby_name_selector --database=postgresql # create ruby project with Postgesql db backend
```

### Create database
```rb
rails db:create
```

### Set up user authentication model using Devise
1. Add devise to gem file and run bundle install. Add `gem "devise"` to the `Gemfile`. `gem install devise` to install.
2. Run devise generator to create a user model and configure deivse.
```bash
rails generate devise:install
rails generate devise User
```
3. Run database migration to create the users table.



