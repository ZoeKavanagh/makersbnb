def booking_fill_in_and_submit
  find('#availability-menu').click
  select('29/11/2018', :from => 'slot')
  fill_in 'comments', with: 'I want a nice room for a night'
  click_button 'Submit'
end
