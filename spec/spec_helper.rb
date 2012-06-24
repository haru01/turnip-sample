require 'turnip/capybara'

Dir.glob("spec/**/*steps.rb") { |f| load f, true }
