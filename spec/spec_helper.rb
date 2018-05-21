require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'rake'
require 'simplecov'
require 'simplecov-console'

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

Capybara.app = Makersbnb

Rake.application.load_rakefile

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.before(:each) do
end

  config.before(:each) do
    DataMapper.auto_migrate!
  end
end
