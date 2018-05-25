require 'data_mapper'

class Room

  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :location, String
  property :description, String
  property :from, Date
  property :to, Date

  belongs_to :user

  has n, :availability
  has n, :booking
end
