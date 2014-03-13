source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'

# Use postgres as the database for Active Record
gem 'pg', "~> 0.17.1"

# Use mongoid as database adapter for mongodb
gem 'mongoid', '~> 4.0.0.beta1'
gem 'bson_ext'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  # Use SCSS for stylesheets
  gem 'sass-rails', '~> 4.0.0'
end

group :development do

end

group :development, :test do
  gem "minitest", "~> 4.7.5"
  gem 'rspec-rails', '~> 2.14.1'
  gem 'fabrication', '~> 2.9.6'
  gem "database_cleaner", "~> 0.8.0"
  gem "spork-rails", '~> 4.0.0'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use debugger
# gem 'debugger', group: [:development, :test]

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end