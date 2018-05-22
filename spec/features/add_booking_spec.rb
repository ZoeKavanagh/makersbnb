feature 'add booking' do

  before do
    visit '/bookings/new'
  end

  scenario 'fill in form' do
    fill_in_and_submit
    expect(page).to have_content 'Booking received'
  end

  scenario 'booking data added to database' do
    fill_in_and_submit
    expect(Booking.all.last).to be_instance_of(Booking)
  end

end
