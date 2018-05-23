require 'data_mapper'
require 'pg'

if ENV['RACK_ENV'] == 'test'
  DataMapper.setup(:default, 'postgres://localhost/makersbnb_test')
else
  DataMapper.setup(:default, 'postgres://localhost/makersbnb')
end

DataMapper.finalize()

Booking.auto_upgrade!
Availability.auto_upgrade!
Room.auto_upgrade!
User.auto_upgrade!
