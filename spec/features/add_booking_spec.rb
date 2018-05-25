feature 'add booking' do
  context 'sucessfully add bookings' do

    let(:name) { 'Champagne Central' }
    let(:location) { 'London' }
    let(:description) { 'Booooooze!' }
    let(:start_date) { '2018-11-29' }
    let(:end_date) { '2018-11-30' }

    before do
      full_log_in_journey
      rooms_fill_in_and_submit(name, location, description, start_date, end_date)
      visit '/bookings/new/1'
      booking_fill_in_and_submit
    end

    scenario 'fill in form' do
      expect(page).to have_content 'Booking received'
    end

    scenario 'booking data added to database' do
      expect(Booking.all.last).to be_instance_of(Booking)
      expect(Booking.all.last.from.strftime("%Y-%m-%d")).to eq '2018-05-29'
      expect(Booking.all.last.to.strftime("%Y-%m-%d")).to eq '2018-05-30'
      expect(Booking.all.last.comment).to eq 'I want a nice room for a night'
    end
  end

  scenario 'redirects to log in page if not logged in' do
    visit '/bookings/new/1'
    expect(page).to have_content 'Cannot make booking if not logged in'
  end
end
