require 'booking'

describe Booking do
  let(:id) { 1 }
  let(:from) { 01-01-18 }
  let(:to) { 02-01-18 }
  let(:status) { 'pending' }
  let(:user_id) { 2 }
  let(:room_id) { 3 }
  subject(:booking) { Booking.new(id, from, to, status, user_id, room_id)}

  describe '#initialise' do
    it 'should have attribute id' do
      expect(booking.id).to eq id
    end

    it 'should have attribute from' do
      expect(booking.from).to eq from
    end

    it 'should have attribute to' do
      expect(booking.to).to eq to
    end

    it 'should have attribute status' do
      expect(booking.status).to eq status
    end

    it 'should have attribute user_id' do
      expect(booking.user_id).to eq user_id
    end

    it 'should have attribute room_id' do
      expect(booking.room_id).to eq room_id
    end
  end
end
