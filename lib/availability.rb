require 'data_mapper'

class Availability

  include DataMapper::Resource

  property :id, Serial
  property :date, Date

  belongs_to :room

  def self.create_dates(start_date, end_date, room_id)
    array = self.dates_calculation(start_date, end_date)
    array.each do |date|
      Availability.create(date: date, room_id: room_id)
    end
  end

  def self.valid_dates?(array)
    array.each do |date|
      unless !!(date.match(/\d{4}-\d{2}-\d{2}/) && Date.strptime(date, "%Y-%m-%d") )
        raise "Issue with format of date, must be yyyy-mm-dd"
      end
    end
    true
  end

  private

  def self.dates_calculation(start_date, end_date)
    start_date = Date.strptime(start_date, "%Y-%m-%d")
    dates = [start_date]
    until dates.last == Date.strptime(end_date, "%Y-%m-%d")
      dates << dates.last.next_day
    end
    dates
  end
end
