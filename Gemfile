source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

#Haml is a templating engine for HTML
gem 'haml-rails'
#Amazon webservices
gem 'aws-sdk'
#Handles image attachments
gem 'paperclip'
# Hiding our api keys with a .env file wtih dotenv-rails
gem 'dotenv-rails'
#Hirb prettifies Database queries in Rails-c for us
gem 'hirb'
#Chosen-rails gives .select features might remove was used in compose section of mailbox
gem 'chosen-rails'
# Devise for user authentication and encryption/sign in / ip etc related features
gem 'devise'
# Allows models to communicate between each-other tracks messages between users and unread counter etc
gem 'mailboxer'
# Facebook authentication that works with devise
gem 'omniauth-facebook'
# Using it to create pdf's of our Entity relationship diagrams
gem "rails-erd"
#Normalizes our css to a blank slate
gem 'normalize-rails'
# Httpary to do Api requests and get .parsed response
gem 'httparty'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'
# Use sqlite3 as the database for Active Record
group :development do
  gem 'sqlite3'
end
# Use postgreSQL as the database for Active Record in Production
group :production do
  gem 'pg'
  gem 'rails_12factor'
end
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
