ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)

require "minitest/autorun"
require "minitest/rails"
require "minitest/pride"

# require "minitest/rails/capybara"

class ActiveSupport::TestCase
  fixtures :all
end
