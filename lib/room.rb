require 'data_mapper'

class Room

  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :location, String
  property :description, String
  property :from, Date
  property :to, Date
  property :user_id, String



end
