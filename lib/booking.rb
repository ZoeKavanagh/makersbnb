require 'data_mapper'

class Booking

  include DataMapper::Resource

  property :id, Serial
  property :from, Date
  property :to, Date
  property :status, String
  property :user_id, String
  property :room_id, String

end
