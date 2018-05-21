require 'data_mapper'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/flash'
load './data_mapper_setup.rb'

class Makersbnb < Sinatra::Base

  configure do
    use Rack::MethodOverride
    register Sinatra::Flash
  end

  get '/' do
    'Hello World'
  end

  run! if app_file == $0
end
