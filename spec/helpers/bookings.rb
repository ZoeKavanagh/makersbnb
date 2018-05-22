def fill_in_and_submit()
  fill_in 'start_date', with: '29/05/2018'
  fill_in 'end_date', with: '30/05/2018'
  fill_in 'comments', with: 'I want a nice room for a night'
  click_button 'Submit'
end
