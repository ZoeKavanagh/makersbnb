require 'calendar'

describe Calendar do
  let(:id) { 1 }
  let(:date) { '2018-05-25' }

  let(:add_test_date) { Calendar.create(
                   id: id,
                   date: date
                  )}
  before do
    add_test_date
  end

  describe '#create' do

    it 'should have an id attribute' do
      expect(add_test_date.id).to eq id
    end

    it 'should have a date attribute' do
      expect(add_test_date.date.to_s).to eq date
    end
  end
end
