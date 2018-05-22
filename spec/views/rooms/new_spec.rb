feature 'Rooms-new page' do

  before do
    visit '/rooms/new'
  end

  scenario 'header loads' do
    expect(page).to have_css("img[src*='./images/logo.png']")
  end

  scenario 'title loads' do
    expect(page).to have_content('Add a room')
  end

  scenario 'instruction for listing a room loads' do
    expect(page).to have_content('Complete this form to list a room.')
  end

  scenario 'property name appears' do
    expect(page).to have_css('input#property-name-field')
  end

  scenario 'location appears' do
    expect(page).to have_css('input#property-location-field')
  end

  scenario 'description appears' do
    expect(page).to have_css('textarea#property-description-field')
  end

  scenario 'start date appears' do
    expect(page).to have_css('input#start-date-field')
  end

  scenario 'end date appears' do
    expect(page).to have_css('input#end-date-field')
  end

  scenario 'submit button appears' do
    expect(page).to have_css('button#submit-button')
  end
end
