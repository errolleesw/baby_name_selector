# README

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

### Step 1: Create a new baby profile
#### Generatve `babyprofile` model and controller
```bash
rails generate scaffold BabyProfile gender:string mothers_name:string fathers_name:string expected_date:date description:text
```
#### Set up the associations:

Open `app/models/baby_profile.rb` and define the associations:

```ruby
class BabyProfile < ApplicationRecord
  has_many :baby_name_options, dependent: :destroy
end
```

### Step 2: Create name options
#### Gerate a `BabyNameOption` scaffold
```bash
rails generate scaffold BabyNameOption name:string baby_profile:references
```

### Stem 3: Rate baby name
#### Generate `NameRating` scaffold
```bash
rails generate scaffold NameRating baby_name_option:references factor:string rating:string

```