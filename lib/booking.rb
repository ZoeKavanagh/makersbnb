class Booking

  attr_reader :id, :from, :to, :status, :user_id, :room_id

  def initialize(id, from, to, status, user_id, room_id)
    @id = id
    @from = from
    @to = to
    @status = status
    @user_id = user_id
    @room_id = room_id
  end

end
