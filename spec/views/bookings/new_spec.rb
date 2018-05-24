feature 'Bookings-new page' do

  before do
    full_log_in_journey
    visit '/bookings/new'
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

  scenario 'start date appears' do
    expect(page).to have_css('input#start-date-field')
  end

  scenario 'end date appears' do
    expect(page).to have_css('input#end-date-field')
  end

  scenario 'comments field appears' do
    expect(page).to have_css('textarea#comments-field')
  end

  scenario 'submit button appears' do
    expect(page).to have_css('button#submit-button')
  end

end
