feature 'index page' do

  context 'on loading' do

    before do
      visit '/'
    end

    scenario 'logo loads' do
      expect(page).to have_css("img[src*='./images/logo.png']")
    end

    scenario 'title loads' do
      expect(page).to have_content('makersbnb')
    end

    scenario 'home menu item is visible' do
      expect(page).to have_css('a#home-menu-item')
    end

    scenario 'add room menu item is visible' do
      expect(page).to have_css('a#add-room-menu-item')
    end

    scenario 'reserve room menu item is visible' do
      expect(page).to have_css('a#reserve-room-menu-item')
    end

    scenario 'tagline is visible' do
      expect(page).to have_content('Need a room? We\'ve got rooms.')
    end

    scenario 'at least one room is visible' do
      expect(page).to have_css('.room')
    end

    scenario 'reserve link is visible' do
      expect(page).to have_xpath(".//a[@href = '/bookings/new']")
    end

    scenario 'available room has a title' do
      expect(page).to have_css('.room .content .header')
    end

    scenario 'available room has a description' do
      expect(page).to have_css('.room .content .description')
    end
  end

end
