def rooms_fill_in_and_submit(name, location, description, start_date, end_date)
  visit '/rooms/new'
  fill_in :name, with: name
  fill_in :location, with: location
  fill_in :description, with: description
  fill_in :start_date, with: start_date
  fill_in :end_date, with: end_date
  click_button 'Submit'
end

def add_room_direct_to_db
  @connection.exec(
    "INSERT INTO rooms VALUES (
    DEFAULT, 'Test room', 'Test location', 'Test description', '2018-06-12', '2018-06-13', 1)"
  )
end
