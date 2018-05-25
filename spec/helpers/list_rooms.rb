def add_rooms_manually
  Room.create(
    user_id: 1,
    name: 'That fancy place',
    location: 'London',
    description: 'We have champagne.',
    from: '2018-07-12',
    to: '2018-07-13'
  )

  Room.create(
    user_id: 1,
    name: 'That other fancy place',
    location: 'London',
    description: 'Sorry we only have prosecco.',
    from: '2018-06-12',
    to: '2018-06-13'
  )
end
