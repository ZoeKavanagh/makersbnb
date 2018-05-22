def fill_in_and_submit()
  fill_in 'start-date', with: '25/05/2018'
  fill_in 'end-date', with: '26/05/2018'
  fill_in 'comments', with: 'I want a nice room for a night'
  click_button 'Submit'
end
