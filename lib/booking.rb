require 'data_mapper'

class Booking

  include DataMapper::Resource

  property :id, Serial
  property :from, Date
  property :to, Date
  property :status, Enum[ :pending, :accepted, :declined], :default => :pending
  property :user_id, String
  property :comment, Text

  belongs_to :room
end
