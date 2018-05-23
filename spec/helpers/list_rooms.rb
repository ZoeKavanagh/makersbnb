def add_rooms_manually
  Room.create(
    from: '2018-07-12',
    to: '2018-07-13',
    user_id: '3',
    location: 'London',
    description: 'We have champagne.',
    name: 'That fancy place'
    )

    Room.create(
      from: '2018-06-12',
      to: '2018-06-13',
      user_id: '4',
      location: 'London',
      description: 'Sorry we only have prosecco.',
      name: 'That other fancy place'
      )
end
