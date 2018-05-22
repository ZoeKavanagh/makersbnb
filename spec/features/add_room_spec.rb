feature 'adding a room' do

  before do
    visit '/rooms/new'
  end

  let(:name) { 'Champagne Central' }
  let(:location) { 'London' }
  let(:description) { 'Booooooze!' }
  let(:start_date) { '07/11/2018' }
  let(:end_date) { '07/12/2018' }

  scenario 'can successfully complete form' do
    rooms_fill_in_and_submit(name, location, description, start_date, end_date)
    expect(page).to have_content 'Room received'
  end

  scenario 'booking data added to database' do
    rooms_fill_in_and_submit(name, location, description, start_date, end_date)
    expect(Room.all.last).to be_instance_of(Room)
    expect(Room.all.last.name).to eq name
    expect(Room.all.last.location).to eq location
    expect(Room.all.last.description).to eq description
    expect(Room.all.last.from.strftime("%d/%m/%Y")).to eq start_date
    expect(Room.all.last.to.strftime("%d/%m/%Y")).to eq end_date
  end
end
