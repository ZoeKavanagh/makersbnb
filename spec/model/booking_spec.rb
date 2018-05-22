require 'booking'

describe Booking do
  let(:id) { 1 }
  let(:from) { '2018-06-12' }
  let(:to) { '2018-06-13' }
  let(:comment) { 'I need an amazing room, with a fridge full of champagne!' }
  let(:status) { :pending }
  let(:user_id) { '2' }
  let(:room_id) { '3' }

  let(:test_booking) { Booking.create(
      id: id,
      from: from,
      to: to,
      user_id: user_id,
      room_id: room_id,
      comment: comment
    ) }

  before do
    test_booking
  end

  describe '#create' do

    it 'returns object with id attribute' do
      expect(test_booking.id).to eq id
    end

    it 'returns object with from attribute' do
      expect(test_booking.from.to_date.to_s).to eq from
    end

    it 'returns object with to attribute' do
      expect(test_booking.to.to_date.to_s).to eq to
    end

    it 'returns object with default pending status attribute' do
      expect(test_booking.status).to eq status
    end

    it 'returns object with user id attribute' do
      expect(test_booking.user_id).to eq user_id
    end

    it 'returns object with room id attribute' do
      expect(test_booking.room_id).to eq room_id
    end

    it 'returns object with comments attribute ' do
      expect(test_booking.comment).to eq comment
    end

  end

  describe '#all' do

    it 'returns the saved booking' do
      expect(Booking.all).to include test_booking
    end

  end

end
