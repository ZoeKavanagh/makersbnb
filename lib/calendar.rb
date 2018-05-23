require 'data_mapper'

class Calendar

  include DataMapper::Resource

  property :id, Serial
  property :date, Date

end 
