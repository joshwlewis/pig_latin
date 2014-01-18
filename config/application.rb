require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env)

module PigLatin
  class Application < Rails::Application
    config.autoload_paths << "#{Rails.root}/lib"
    config.generators do |g|
      g.test_framework :mini_test, :spec => true, :fixture => false
    end
  end
end
