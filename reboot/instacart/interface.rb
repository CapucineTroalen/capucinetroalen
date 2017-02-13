def does_not_include?(item)
    !include?(item)
  end


# modelise products
products = [
  {
    name: "6 pommes",
    price: 2.50,
    stock: 10,
    sku: "apple5"
  },
  {
    name: "Madeleines",
    price: 42.0,
    stock: 1,
    sku: "mad68"
  },
  {
    name: "Côte de boeuf",
    price: 21.0,
    stock: 3,
    sku: "miam12"
  }
]



# modelise cart
cart = []
# {
#   sku: "toto18",
#   quantity: 12
# }, ...
puts "--- display products"
products.each_with_index do |product, index|
  puts "#{index + 1} - #{product[:name]} : #{product[:price]}€ - stock : #{product[:stock]}"
end


loop do
  puts "--- choose product number to add it to your cart"
  # choose product
  chosen_product_index = gets.chomp.to_i
  case test
    when (0..products.length).to_a.does_not_include?(chosen_product_index - 1)
      puts "We don't have this reference"
    when chosen_product_index == 0
      break
    when (0..products.length).to_a.include?(chosen_product_index - 1)
      chosen_quantity = gets.chomp.to_i
  end

  if chosen_quantity > products[chosen_product_index - 1][:stock]
    puts "We dont have enough stock. Remaining stock for #{products[chosen_product_index - 1][:name]} : #{products[chosen_product_index - 1][:stock]}"
  else
    puts "You added to your cart #{chosen_quantity} x #{products[chosen_product_index - 1][:name]}"
  end

  break if chosen_product_index == 0

end





puts "Your #{cart} contains X"


product = products[chosen_product_index]
# {
#   name: "Côte de boeuf",
#   price: 21.0,
#   stock: 3,
#   sku: "miam12"
# }

# add to cart
cart << {
  sku: product[:sku],
  quantity: chosen_quantity
}
p cart

puts "--- remove this product from stock"
# remove from stock
p products
product[:stock] -= chosen_quantity
p products

puts "--- add another product to cart and remove it from stock"
# add another product and print total
cart << {
  sku: products[0][:sku],
  quantity: 1
}
p cart
p products
products[0][:stock] -= 1
p products

puts "--- display total price"
total_price = cart.reduce(0) do |acc, elem|
  product = products.find { |product| product[:sku] == elem[:sku] }
  acc += elem[:quantity] * product[:price]
end

p total_price

puts "--- remove item from cart and restock it"
# remove an item from cart
cart.each_with_index do |elem, index|
  product = products.find { |product| product[:sku] == elem[:sku] }
  puts "#{index + 1} - #{product[:name]} : #{product[:price]}€ (#{elem[:quantity]})"
end

chosen_item_to_remove_index = 1
item_to_remove = cart.delete_at(chosen_item_to_remove_index)
p item_to_remove
p cart

# re add to stock
product = products.find { |product| product[:sku] == item_to_remove[:sku] }
product[:stock] += item_to_remove[:quantity]

p products
