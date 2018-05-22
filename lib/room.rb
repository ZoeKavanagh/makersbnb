require 'data_mapper'

class Room

  include DataMapper::Resource

  property :id, Serial
  property :from, Date
  property :to, Date
  property :user_id, String
  property :location, String
  property :description, String
  property :name, String

end
