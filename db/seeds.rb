center_point = { lat: 50.0515918, lng: 19.9357531 }

1.upto(1000) do |i|
  Place.create!(
    name: Faker::Address.city,
    description: Faker::Lorem.paragraph(8),
    longitude: center_point[:lng] + rand(-10.00..10.00),
    latitude: center_point[:lat] + rand(-10.00..10.00),
    price: rand(1..500)
  )
end
