require 'data_mapper'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/flash'
load './data_mapper_setup.rb'

class Makersbnb < Sinatra::Base

  configure do
    # use Rack::MethodOverride
    # register Sinatra::Flash
  end

  get '/' do
    erb :index
  end

  get '/bookings/new' do
    erb :'bookings/new'
  end

  post '/bookings/new' do
    Booking.create(
        from: params[:start_date],
        to: params[:end_date],
        user_id: '1',
        room_id: '1',
        comment: params[:comments]
      )
    redirect '/bookings/requests'
  end

  get '/bookings/requests' do
    erb :'bookings/requests'
  end

  run! if app_file == $0
end
