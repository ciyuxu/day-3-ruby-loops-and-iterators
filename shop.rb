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
@products = [{reference_no: 1, name: "primer", price: 10},
{reference_no: 2, name: "foundation", price: 20},
{reference_no: 3, name: "eyeshadow", price: 15},
{reference_no: 4, name: "mascara", price: 15},
{reference_no: 5, name: "lipstick", price: 10},
{reference_no: 6, name: "blush", price: 10},
]

#defined shopping_cart and product lipstick

def print_products
puts "We have: "
  @products.each do |product_name|
    puts " #{product_name[:name]}"
  end
end

print_products

#defined product line print out

def choosing_product_by_ref_number
  puts "Please type-in product by reference number:"
  gets.to_i
end



#defined choosing_product





def pickingout_product_by_ref_number(ref_number)
  @products.each do |product|
    if product[:reference_no]== ref_number
      return product
    end
  end
end
puts pickingout_product_by_ref_number(choosing_product_by_ref_number)

#defined picking product from ref number


def adding_product_to_shopping_cart(product)
  if product != nil
  @shopping_cart << product
  puts "Congratulations! You have sucessfully put #{product[:name]}in your shopping cart!"
  else
  puts "You haven't sucessfully chosen anything yet."
  end
end

puts adding_product_to_shopping_cart(pickingout_product_by_ref_number(2))

#defined adding product to shopping cart
