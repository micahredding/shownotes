source 'https://rubygems.org'
gem 'rails', '3.2.12'
gem 'sqlite3'
gem 'whiskey_disk'
gem 'jquery-rails'
gem 'authlogic'
gem 'bourbon'
gem 'neat'
gem 'chosen-rails'
gem 'nested_form'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem "heroku_rails_deflate"
end

group :development do
  gem "foreman"
  gem "guard-bundler"
  gem "guard-rspec"
  gem "guard-spork"
  gem "rb-fsevent", :require => false
  gem "growl"
  gem "better_errors"
  gem "binding_of_caller"
end

group :development, :test do
  gem 'factory_girl_rails'
  gem "pry-rails"
  gem "pry-nav"
  gem "awesome_print"
  gem "quiet_assets"
  gem "heroku"
  gem "rspec-rails"
end

group :test do
  gem "spork-rails"
  gem "database_cleaner"
  gem "shoulda-matchers"
  gem "capybara-webkit"
  gem "launchy"
  gem "fuubar"
  gem "simplecov"
end
