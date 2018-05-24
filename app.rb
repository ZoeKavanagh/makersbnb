require './lib/booking'
require './lib/availability'
require './lib/room'
require './lib/user'
require 'data_mapper'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/flash'
load './data_mapper_setup.rb'

class Makersbnb < Sinatra::Base

  configure do
    enable :sessions
    use Rack::MethodOverride
    register Sinatra::Flash
  end

  get '/' do
    @rooms = Room.all
    erb :index
  end

  get '/bookings/new' do
    if session[:user_id] == nil
      flash[:notice] = 'Cannot make booking if not logged in'
      redirect '/sessions/new'
    end
    erb :'bookings/new'
  end

  post '/bookings/new' do
    Booking.create(
        from: params[:start_date],
        to: params[:end_date],
        user_id: session[:user_id],
        room_id: '1',
        comment: params[:comments]
      )
    redirect '/bookings/requests'
  end

  get '/bookings/requests' do
    erb :'bookings/requests'
  end

  get '/rooms/new' do
    erb :'rooms/new'
  end

  post '/rooms/new' do
    Availability.valid_dates?([params[:start_date], params[:end_date]])

    new_room = Room.create(
      name: params[:name],
      location: params[:location],
      description: params[:description],
      user_id: session[:user_id],
    )
    Availability.create_dates(params[:start_date], params[:end_date], new_room.id)

    redirect '/rooms/requests'
  end

  get '/rooms/requests' do
    erb :'rooms/requests'
  end

  get '/users/new' do
    erb :'users/new'
  end

  post '/users/new' do

    @user = User.create(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )

    flash[:notice] = "You have signed up. Please sign in!"
    redirect '/'
  end

  get '/users/requests' do
    erb :'users/requests'
  end

  get '/sessions/new' do
    erb :'sessions/new'
  end

  post '/sessions/new' do
    @user = User.first(email: params[:email])

    if @user && (@user.password == params[:password])
      session[:user_id] = @user.id
      session[:user_name] = @user.name
      redirect('/')
    else
      flash[:notice] = 'Username or password incorrect. Access denied. denied.'
      redirect('/sessions/new')
    end

  end

  post '/sessions/destroy' do
    session.clear
    session[:user_id]
    flash[:notice] = 'You have signed out.'
    redirect('/')
  end

  run! if app_file == $0
end
