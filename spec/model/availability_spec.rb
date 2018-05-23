require 'availability'
require 'room'

describe Availability do
  let(:id) { 1 }
  let(:date) { '2018-05-25' }
  let(:room_id) { 1 }

  let(:start_date) { '2018-05-25' }
  let(:date_inbetween) { '2018-05-26' }
  let(:end_date) { '2018-05-27' }

  let(:test_slot) { Availability.create(
      date: date,
      room_id: room_id
    )}

  let(:test_room) { Room.create()}

  before do
    test_room
    test_slot
  end

  context '#create' do
    it 'returns object with id attribute' do
      expect(test_slot.id).to eq id
    end

    it 'returns object with date attribute' do
      expect(test_slot.date.to_s).to eq date
    end

    it 'returns object with room id' do
      expect(test_slot.room_id).to eq room_id
    end
  end

  context '#dates_calculation' do
    it 'should take two dates and return an array of all the days between the dates' do
      all_the_dates = [
        Date.strptime(start_date, "%Y-%m-%d"),
        Date.strptime(date_inbetween, "%Y-%m-%d"),
        Date.strptime(end_date, "%Y-%m-%d")
       ]
      expect(Availability.dates_calculation(start_date, end_date)).to eq all_the_dates
    end
  end

  context '#create_dates' do
    it 'should take an array of dates and create a slot for each' do
      new_date = '2018-06-02'
      new_slot = Availability.create_dates([new_date], room_id)
      expect(Availability.all.last.date).to eq Date.strptime(new_date, "%Y-%m-%d")
    end
  end
end
