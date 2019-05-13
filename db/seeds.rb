puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Mildreds',
    address: 'Soho',
    phone_number: '123456789',
    category: 'french'
  },
  {
    name: 'Wasabi',
    address: 'Liverpool Street',
    phone_number: '34835746543',
    category: 'japanese'
  },
  {
    name: 'Pho',
    address: 'Kingston',
    phone_number: '485483753',
    category: 'chinese'
  },
  {
    name: 'Buddha Bowl',
    address: 'Richmond',
    phone_number: '438473875',
    category: 'italian'
  },
  {
    name: 'Wagamamas',
    address: 'Everywhere/omnipresent street',
    phone_number: '3782783',
    category: 'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished restaurant seed'

puts 'Cleaning database...'
Review.destroy_all

puts 'Creating reviews...'
reviews_attributes = [
  {
    content: 'delicious',
    rating: 2,
    restaurant: Restaurant.last
  },
  {
    content: 'delicious',
    rating: 2,
    restaurant: Restaurant.last
  },
  {
    content: 'delicious',
    rating: 2,
    restaurant: Restaurant.last
  },
  {
    content: 'delicious',
    rating: 2,
    restaurant: Restaurant.last
  },
  {
    content: 'delicious',
    rating: 2,
    restaurant: Restaurant.last
  }
]
Review.create!(reviews_attributes)
puts 'Finished'
