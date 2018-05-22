feature 'add booking' do

  before do
    visit '/bookings/new'
  end

  scenario 'fill in form' do
    fill_in :name, with: 'Zoe'
    fill_in :start_date, with: '25/05/2018'
    fill_in :end_date, with: '26/05/2018'
    fill_in :comments, with: 'I want a nice room for a night'
    click_button 'Submit'
    expect(page).to have_content 'Booking received'
  end
end
