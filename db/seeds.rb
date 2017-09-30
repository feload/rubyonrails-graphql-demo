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
end