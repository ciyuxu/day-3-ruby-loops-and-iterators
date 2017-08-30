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

#defined picking product from ref number

def adding_product_to_shopping_cart(product)
  if product != nil
  @shopping_cart << product
  puts "Congratulations! You have sucessfully put #{product[:name]} in your shopping cart!"
  else
  puts "You haven't sucessfully chosen anything yet."
  end
end

#defined adding product to shopping cart

def print_shopping_cart

  total = 0

  @shopping_cart.each do |product|
    total += product[:price]
  end

  puts "Your total : #{total}"

end

#definned total in shopping cart

def ask_if_continue_shopping
  puts "Do you want to continue shopping?"
  answer = gets.chomp
  answer.upcase == 'Y'
end

#defined if want to shopping moderate

loop do
  print_products
  ref_number = choosing_product_by_ref_number
  product = pickingout_product_by_ref_number(ref_number)
  adding_product_to_shopping_cart(product)
  print_shopping_cart
  continue = ask_if_continue_shopping
  break unless continue
end

#defined whole process of shopping

puts "Enjoy your products!"
