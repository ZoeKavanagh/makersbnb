feature 'sign_up_log_in' do

  before do
    visit '/users/new'
  end

  let(:name) { 'Chloe'}
  let(:email) { 'chloe@gmail.com' }
  let(:password) { 'fish1234'}


  scenario 'can successfully complete form' do
    sign_up_and_submit(name, email, password)
    expect(page).to have_content 'User details received'
  end

  scenario 'user data added to database' do
    sign_up_and_submit(name, email, password)
    expect(User.all.last).to be_instance_of(User)
    expect(User.all.last.name).to eq name
    expect(User.all.last.email).to eq email
    expect(User.all.last.password).to eq password
  end

  fscenario 'user can log-in' do
    sign_up_and_submit(name, email, password)
    visit '/sessions/new'
    log_in_and_submit(email, password)
    expect(page).to have 'Welcome, Chloe'
  end
end
