describe 'adding a room' do
  xscenario 'can successfully complete form' do
    visit '/rooms/new'
    fill_in :name, with: 'Champagne Central'
    fill_in :location, with: 'London'
    fill_in :description, with: 'I need champagne every day.'
    fill_in :from, with: '07-11-2018'
    fill_in :to, with: '07-12-2018'
    click_button 'Submit'
  end
end
