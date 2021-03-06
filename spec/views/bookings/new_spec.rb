feature 'Bookings-new page' do

  before do
    full_log_in_journey
    visit '/bookings/new/1'
  end


  scenario 'header loads' do
    expect(page).to have_css("img[src*='./images/logo.png']")
  end

  scenario 'title loads' do
    expect(page).to have_content('Book a room')
  end

  scenario 'instruction for booking a room loads' do
    expect(page).to have_content('Complete this form to reserve a room.')
  end

  scenario 'availability field appears' do
    expect(page).to have_css('div#availability-field')
  end

  scenario 'comments field appears' do
    expect(page).to have_css('textarea#comments-field')
  end

  scenario 'submit button appears' do
    expect(page).to have_css('button#submit-button')
  end

end
