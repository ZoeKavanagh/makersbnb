require 'availability'
require 'room'

describe Availability do
  let(:id) { 1 }
  let(:date) { '2018-05-25' }
  let(:room_id) { 1 }

  let(:test_slot) { Availability.create(
      date: date,
      room_id: room_id
    )}

  let(:test_room) { Room.create()}

  before do
    test_room
    test_slot
  end

  describe '#create' do

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


end
