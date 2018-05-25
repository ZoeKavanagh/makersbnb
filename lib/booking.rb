require 'data_mapper'

class Booking

  include DataMapper::Resource

  property :id, Serial
  property :status, Enum[ :pending, :accepted, :declined], :default => :pending
  property :comment, Text

  belongs_to :user
  belongs_to :room
  belongs_to :availability
end
