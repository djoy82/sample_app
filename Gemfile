source 'https://rubygems.org'

#ruby '2.1.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use mysql as the database for Active Record
gem 'mysql2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Add bootstrap-sass to convert LESS CSS language used by boostrap to the Sass CSS language used in rails.

gem 'bootstrap-sass', '2.3.2.0'

# Add bcrypt-ruby for password encryption
gem 'bcrypt-ruby', '3.0.0'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end


group :development do
  gem 'rspec-rails', '~> 3.0.0.beta'
  gem 'guard-rspec'
end

group :production do
  gem 'rails_12factor', '0.0.2' #Heroku treats logs as streams and requires your logs to be sent to STDOUT. To enable STDOUT logging in Rails 4 you can add the rails_12factor gem. This gem will also configure your app to serve assets in production.
  gem 'unicorn'
  gem 'pg' #Your application needs to be configured to use the Postgres database. Newly generated Rails 4 applications are configured to use sqlite.
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.2.0'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
