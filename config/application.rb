require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Forthlight
  class Application < Rails::Application    
    config.autoload_paths += %W(#{config.root}/lib)

    config.i18n.default_locale = :en

    # Set Devise locale file to use
    config.i18n.load_path += Dir[File.join(Rails.root, 'config', 'locales', 'devise.*.yml')]

    #Setup environment variables
    config.before_configuration do
      env_file = File.join(Rails.root, 'config', 'secrets.yml')
      YAML.load(File.open(env_file)).each do |key, value|
        ENV[key.to_s] = value
      end if File.exists?(env_file)
    end

    # Generators
    config.generators do |g|
       g.test_framework :rspec, :fixture => true, :views => false
       g.fixture_replacement :fabrication
    end
  end
end
