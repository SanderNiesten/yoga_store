@shopping_cart = []

@departments = [ :mats, :props, :clothes, :books ]

@products = {
  mats: [
      { reference_number: 1231, name: "Super Lite Mat", price: 10 },
      { reference_number: 1232, name: "Power Mat", price: 20 },
    ],
    props: [
      { reference_number: 1233, name: "Block", price: 30 },
      { reference_number: 1234, name: "Meditation cushion", price: 30 },
    ],
    clothes: [
      { reference_number: 1235, name: "The best T-shirt", price: 200 },
      { reference_number: 1236, name: "The cutest yoga pants", price: 300 },
    ],
    books: [
      { reference_number: 1237, name: "Bring Yoga To Life", price: 30 },
      { reference_number: 1238, name: "Light On Yoga", price: 10 },
    ]
  }

def show_departments
  @products.each_key { |key| puts "#{key}; "}
end

def line_divide
  puts "*" * 40
  puts "\n"
end

puts "Welcome to our store. What departments would you like to order from?\n
You can choose from:\n\n"
show_departments
puts "\nEnter your choice\n"

loop do
  @input = gets.chomp.to_sym
  line_divide
  @product_hashes = @products[@input]

  if @product_hashes == nil
    puts "Invalid choice, try again"
  else
    break
  end
end

@product_hashes.each do |hash|
  hash.each_value do |value|
    print "#{value}; "
  end
  puts
  line_divide
end
