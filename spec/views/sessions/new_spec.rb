feature 'Session - sign in page' do

  before do
    visit '/sessions/new'
  end

  scenario 'title loads' do
    expect(page).to have_content('Sign')
  end

  scenario 'instruction for booking a room loads' do
    expect(page).to have_content('Already a member? Sign in to get started!')
  end

  scenario 'start date appears' do
    expect(page).to have_css('input#email-field')
  end

  scenario 'end date appears' do
    expect(page).to have_css('input#password-field')
  end

  scenario 'submit button appears' do
    expect(page).to have_css('button#submit-button')
  end

end
