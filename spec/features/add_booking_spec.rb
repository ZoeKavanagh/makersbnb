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
    expect(Booking.all.last.from.strftime("%d/%m/%Y")).to eq '29/05/2018'
    expect(Booking.all.last.to.strftime("%d/%m/%Y")).to eq '30/05/2018'
    expect(Booking.all.last.comment).to eq 'I want a nice room for a night'
  end

end
