puts File.dirname(__FILE__)
require 'turnip/capybara'
require "#{File.dirname(__FILE__)}/../src/neco.rb"
require 'pp'

Dir.glob("spec/**/*steps.rb") { |f| load f, true }
