feature 'list rooms' do
  before do
    add_rooms_manually
    visit '/'
  end

  scenario 'shows the header' do
    expect(page).to have_content 'makersbnb'
  end

  fscenario 'lists all available rooms' do
    add_rooms_manually
    expect(page).to have_content 'We have champagne.'
    expect(page).to have_content 'Sorry we only have prosecco.'
  end
end
