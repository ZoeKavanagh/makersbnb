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

    scenario 'tagline is visible' do
      expect(page).to have_content('Need a room? We\'ve got rooms.')
    end

  end

end
