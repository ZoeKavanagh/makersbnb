require 'data_mapper'
require 'pg'

if ENV['RACK_ENV'] == 'test'
  DataMapper.setup(:default, 'postgres://localhost/makersbnb_test')
else
  DataMapper.setup(:default, 'postgres://localhost/makersbnb')
end

DataMapper::Property::String.length(255)

DataMapper.finalize()

User.auto_upgrade!
Room.auto_upgrade!
Availability.auto_upgrade!
Booking.auto_upgrade!
