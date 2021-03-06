10.times do |i|
  Movie.create!(title: Faker::Book.title,
                summary: Faker::Lorem.sentence,
                year: Faker::Date.birthday(18, 65).year)
end

20.times do |i|
  Actor.create!(name: Faker::Book.author,
                bio: Faker::Lorem.sentence)
end

r = Random.new
Movie.all.each do |movie|
  movie.actors << Actor.find(r.rand(1..Actor.count))
  movie.save
end

10.times do |i|
  Role.create!(description: Faker::Job.key_skill)
end

5.times do |i|
  client = Client.create!(name: Faker::Book.author)
  address = Address.create!(address: Faker::Address.street_address, client: client)
  order = Order.create(quantity: i + 3, client: client)
end

Role.count.times do |i|
  client = Client.find(r.rand(Client.first.id..Client.count))
  client.roles << Role.find(r.rand(Role.first.id..Role.count))
  client.save
end