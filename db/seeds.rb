categories = Category.create([
  { title: 'Mountain bikes' },
  { title: 'Road bikes' },
  { title: 'Hybrid bikes' }
])

ganders = Gander.create([
  { title: 'Unisex' },
  { title: 'Men' },
  { title: 'Women' }
])

bikes = Bike.create(
  9.times.map do |i|
    { title: Faker::Artist.name,
      description: Faker::Lorem.paragraph,
      picture: "/bike_photos/#{i + 1}.jpg",
      price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
      rating: (1..5).to_a.sample,
      category: categories.sample,
      gander: ganders.sample }
  end
)
