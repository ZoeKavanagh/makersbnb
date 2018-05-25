def sign_up_and_submit(name, email, password)
  fill_in :name, with: name
  fill_in :email, with: email
  fill_in :password, with: password
  fill_in :confirm_password, with: password
  click_button 'Submit'
end

def log_in_and_submit(email, password)
  fill_in :email, with: email
  fill_in :password, with: password
  click_button 'Submit'
end

def full_log_in_journey
  email = 'chloe@gmail.com'
  password = 'fish1234'

  visit '/users/new'
  sign_up_and_submit('Chloe', email, password)
  visit '/sessions/new'
  log_in_and_submit(email, password)
end
