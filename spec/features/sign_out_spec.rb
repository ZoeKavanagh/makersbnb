feature 'sign_out' do

  before do
    visit '/users/new'
  end

  let(:name) { 'Chloe'}
  let(:email) { 'chloe@gmail.com' }
  let(:password) { 'fish1234'}

  fscenario 'user can log-out' do
    visit '/'
    click_link 'Sign up'
    sign_up_and_submit(name, email, password)
    click_link 'Sign in'
    log_in_and_submit(email, password)
    expect(page).to have_content 'Welcome Chloe'
    click_button 'submit-button'
    expect(page).to_not have_content 'Welcome Chloe'
    expect(page).to have_content 'makersbnb'
  end

end
