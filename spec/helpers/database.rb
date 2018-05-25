def add_user_direct_to_db
  @connection.exec(
    "INSERT INTO users VALUES (
    DEFAULT, 'Test name', 'test@email.com', '$2a$10$39ijJVP3RM8gfiusRl96N.dDE8lb7SUf1QC2LwFdlBQ0m5AN3WWnO')"
  )
end

def add_room_direct_to_db
  @connection.exec(
    "INSERT INTO rooms VALUES (
    DEFAULT, 'Test room', 'Test location', 'Test description', '2018-06-12', '2018-06-13', 1)"
  )
end

def add_availability_direct_to_db
  date = Date.strptime('2018-05-25', "%Y-%m-%d")
  @connection.exec(
    "INSERT INTO availabilities VALUES (
    DEFAULT, '#{date}', 1)"
  )
end

def add_all_direct_to_db
  add_user_direct_to_db
  add_room_direct_to_db
  add_availability_direct_to_db
end
