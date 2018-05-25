def booking_fill_in_and_submit
  # select 'Option', :from => 'Select Box'
  fill_in 'comments', with: 'I want a nice room for a night'
  click_button 'Submit'
end
