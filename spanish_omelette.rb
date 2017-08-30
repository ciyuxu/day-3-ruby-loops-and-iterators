NUM_POTATOES = 5
NUM_EGGS = 6

ingredients = [
  { name: 'potatoes', quantity: NUM_POTATOES },
  { name: 'eggs', quantity: NUM_EGGS },
  { name: 'onion', quantity: 1 },
  { name: 'oil', quantity: 'some' },
  { name: 'salt', quantity: 'some' },
]

puts "Let's cook spanish omelette!"

print_divider

puts "You need the following ingredients:"

ingredients.each do |ingredient|
  puts "#{ingredient[:name]} #{ingredient}[:quantity]"
