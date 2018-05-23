require 'availability'

describe Availability do
  let(:id) { 1 }

  let(:test_slot) { Availability.create(
    )}

  before do
    test_slot
  end

  describe '#create' do

    it 'returns object with id attribute' do
      expect(test_slot.id).to eq id
    end
  end
end
