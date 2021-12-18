date = DateTime.current.at_beginning_of_year + 8.hours
5.times do 
  Player.create(
  	name: Faker::Name.unique.name,
  	mobile_number: Faker::PhoneNumber.cell_phone,
  	email: Faker::Internet.email,
  	joining_date: date + Faker::Number.between(from: 8, to: 10).hours
  )
end

Game.create(name: 'Football')
Game.create(name: 'Cricket')
Game.create(name: 'Ludo')

25.times do 
  Participation.create(
    game: Game.all.sample,
    player: Player.all.sample,
    opponent: Player.all.sample,
    score: Faker::Number.between(from: 30, to: 100)
  )
end
