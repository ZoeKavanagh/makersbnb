def booking_fill_in_and_submit
  fill_in 'start_date', with: '2018-05-29'
  fill_in 'end_date', with: '2018-05-30'
  fill_in 'comments', with: 'I want a nice room for a night'
  click_button 'Submit'
end
