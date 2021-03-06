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

# Pagination
gem 'kaminari', '~> 0.15.1'
# Elasticsearch
gem 'elasticsearch-model'
gem 'elasticsearch-rails'

# Wizard
gem 'wicked', '~> 1.0.2'

# Gem to sanitize html input from tinymce text editor
gem 'sanitize', '~> 2.1.0'

group :assets do
  # Use SCSS for stylesheets
  gem 'sass-rails', '4.0.0'
end

# local engines for development, production should use remote, via git
# gem 'common_domain', path: '../common_domain'
# gem 'auth', path: '../auth'
# gem 'article', path: '../article'
# gem 'member', path: '../member'
# gem 'administration', path: '../administration'

gem 'common_domain', :git => 'git://github.com/Forthlight/common_domain.git', :branch => 'dev'
gem 'auth', :git => 'git://github.com/Forthlight/auth.git', :branch => 'dev'
gem 'article', :git => 'git://github.com/Forthlight/article.git', :branch => 'dev'
gem 'member', :git => 'git://github.com/Forthlight/member.git', :branch => 'dev'
gem 'administration', :git => 'git://github.com/Forthlight/administration.git', :branch => 'dev'

#Gems used only in development and test environment
group :development, :test do
  gem "minitest", "4.7.5", :git => 'git://github.com/seattlerb/minitest.git'
  gem 'rspec-rails', '2.14.1'
  gem 'fabrication', '2.9.6'
  gem "database_cleaner", "1.2.0"
  gem "spork-rails", '~> 4.0.0'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :staging, :production do
  gem 'puma'
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano3-puma', require: false
  #gem 'capistrano-git'
  #gem 'rvm1-capistrano3', :require => false
  gem 'capistrano-rvm'
end

group :production do

end
