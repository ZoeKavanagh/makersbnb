require 'booking'

describe Booking do
  let(:id) { 1 }
  let(:status) { :pending }
  let(:comment) { 'I need an amazing room, with a fridge full of champagne!' }

  let(:availability_id) { 1 }
  let(:user_id) { 1 }
  let(:room_id) { 1 }

  let(:test_booking) { Booking.create(
    comment: comment,
    availability_id: availability_id,
    user_id: user_id,
    room_id: room_id,
  )}

  before do
    add_all_direct_to_db
    test_booking
  end

  describe '#create' do

    it 'returns object with id attribute' do
      expect(test_booking.id).to eq id
    end

    it 'returns object with default pending status attribute' do
      expect(test_booking.status).to eq status
    end

    it 'returns object with comments ' do
      expect(test_booking.comment).to eq comment
    end

    it 'returns object with availability_id attribute' do
      expect(test_booking.availability_id).to eq availability_id
    end

    it 'returns object with user_id attribute' do
      expect(test_booking.user_id).to eq user_id
    end

    it 'returns object with room_id attribute' do
      expect(test_booking.room_id).to eq room_id
    end
  end

  describe '#all' do

    it 'returns the saved booking' do
      expect(Booking.all).to include test_booking
    end

  end

end
