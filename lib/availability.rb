require 'data_mapper'

class Availability

  include DataMapper::Resource

  property :id, Serial
  property :date, Date

  belongs_to :room 

end
