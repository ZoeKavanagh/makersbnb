require 'data_mapper'

class Availability

  include DataMapper::Resource

  property :id, Serial
  property :date, Date

  belongs_to :room

  def dates_calculation(start_date, end_date)
    start_date = Date.strptime(start_date, "%Y-%m-%d")
    dates = [start_date]
    until dates.last == Date.strptime(end_date, "%Y-%m-%d")
      dates << dates.last.next_day
    end
    dates
  end

  def self.create_dates(array, room_id)
    array.each do |date|
      Availability.create(date: date, room_id: room_id)
    end
  end

end
