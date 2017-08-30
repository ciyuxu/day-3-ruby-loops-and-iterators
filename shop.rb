def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

# defined print_divider and print_progress_bar

@shopping_cart = []
@product = [{reference_no: 1, name: "primer", price: 10},
{reference_no: 2, name: "foundation", price: 20},
{reference_no: 3, name: "eyeshadow", price: 15},
{reference_no: 4, name: "mascara", price: 15},
{reference_no: 5, name: "lipstick", price: 10},
{reference_no: 6, name: "blush", price: 10},
]

#defined shopping_cart and product lipstick

def print_products
puts "We have: "
  @product.each do |product_name|
    puts " #{product_name[:name]}"
  end
end

print_products

#defined product line print out

def choosing_product
  puts "Please type-in product by reference number:"
  chosen_reference_number = gets.to_i
end

#defined choosing_product
