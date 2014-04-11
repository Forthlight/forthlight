source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'

# Use postgres as the database for Active Record
gem 'pg', "0.17.1"

# Use mongoid as database adapter for mongodb
gem 'mongoid', '4.0.0.beta1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', "3.1.0"

#if you find this, remove it
gem 'rubocop', require: false

# Added to solve installation issues
gem 'json', :git => "git://github.com/flori/json.git"
gem 'thread_safe', :git => 'git://github.com/headius/thread_safe.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  # Use SCSS for stylesheets
  gem 'sass-rails', '4.0.0'
end

#Gems used only in development environment
group :development do

end

#Gems used only in development and test environment
group :development, :test do
  gem 'auth', path: "/vagrant/auth"
  gem 'member', path: "/vagrant/member"
  gem 'administration', path: "/vagrant/administration"
  gem 'article', path: "/vagrant/article"
  gem 'common_domain', path: "/vagrant/common_domain"

  gem "minitest", "4.7.5", :git => 'git://github.com/seattlerb/minitest.git'
  gem 'rspec-rails', '2.14.1'
  gem 'fabrication', '2.9.6'
  gem "database_cleaner", "1.2.0"
  gem "spork-rails", '~> 4.0.0'
  #sexy deployment
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'rvm1-capistrano3', :require => false
  #gem 'capistrano-rvm'


end


 group :production do
  gem 'auth', path: "../auth"
  gem 'member', path: "../member"
  gem 'administration', path: "../administration"
  gem 'article', path: "../article"
  gem 'common_domain', path: "../common_domain"
end
# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use debugger
# gem 'debugger', group: [:development, :test]

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end