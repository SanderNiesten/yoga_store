
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


puts "Welcome to our store. What departments would you like to order from?\n
You can choose 'mats' (1), 'props' (2), 'clothes' (3), 'books' (4)."

input = gets.chomp.to_i

if input == 1
  for i in 0...(@products[:mats].length)
    puts "#{@products[:mats][i][:reference_number]} - #{@products[:mats][i][:name]} - $#{@products[:mats][i][:price]}"
  end
end

if input == 2
  for i in 0...(@products[:props].length)
    puts "#{@products[:props][i][:reference_number]} - #{@products[:props][i][:name]} - $#{@products[:props][i][:price]}"
  end
end

if input == 3
  for i in 0...(@products[:clothes].length)
    puts "#{@products[:clothes][i][:reference_number]} - #{@products[:clothes][i][:name]} - $#{@products[:clothes][i][:price]}"
  end
end

if input == 4
  for i in 0...(@products[:books].length)
    puts "#{@products[:books][i][:reference_number]} - #{@products[:books][i][:name]} - $#{@products[:books][i][:price]}"
  end
end
