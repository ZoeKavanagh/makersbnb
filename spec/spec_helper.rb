ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require './spec/helpers/bookings'
require './spec/helpers/rooms'
require './spec/helpers/list_rooms'
require './spec/helpers/sign_up_log_in'
require 'rspec'
require 'simplecov'
require 'simplecov-console'

Capybara.app = Makersbnb

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.before(:each) do
    @connection = PG.connect(dbname: 'makersbnb_test')
  end

  config.before(:each) do
    DataMapper.auto_migrate!
  end
end
