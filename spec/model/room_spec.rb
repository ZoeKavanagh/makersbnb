require 'room'

describe Room do

  let(:id) { 1 }
  let(:from) { '2018-07-12' }
  let(:to) { '2018-07-13' }
  let(:user_id) {'3'}
  let(:location) { 'London'}
  let(:description) { 'We have champagne.'}
  let(:name) {'That fancy place'}

  let(:test_room) { Room.create(
    id: id,
    from: from,
    to: to,
    user_id: user_id,
    location: location,
    description: description,
    name: name
    ) }

  before do
    test_room
  end

  context '#create' do
    it 'returns object with id attribute' do
      expect(test_room.id).to eq id
    end

    it 'returns object with from attribute' do
      expect(test_room.from.to_date.to_s).to eq from
    end

    it 'returns object with to attribute' do
      expect(test_room.to.to_date.to_s).to eq to
    end

    it 'returns object with user id attribute' do
      expect(test_room.user_id).to eq user_id
    end

    it 'returns object with location attribute' do
      expect(test_room.location).to eq location
    end

    it 'returns object with description attribute' do
      expect(test_room.description).to eq description
    end

    it 'returns object with property name attribute' do
      expect(test_room.name).to eq name
    end
  end
end
