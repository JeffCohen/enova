



def display(landmark_name, price)
  if price == "Free"
    puts "#{landmark_name} is #{price}"
  else
    puts "#{landmark_name} costs #{price}"
  end
end

landmarks = [ { "name" => "Sears Tower", "price" => "25" },
      { "name" => "Wrigley Field", "price" => "15" },
      { "name" => "The Bean", "price" => "Free" }
      ]

# h.each do |item|
#   display item["name"], item["price"]
# end

landmarks.each { |item| display item["name"], item["price"] }

prices = h.collect { |item| item["price"] }




# expensive_item = h.detect do |item|
#   item["price"].to_i > 20
# end

# prices.reject do |item|
#   item["price"].to_i > 20
# end

# sum = prices.inject(100) do |total, item|
#   total += item["price"].to_i
#   total
# end
# puts sum

# puts prices.inspect
# puts expensive_item.inspect
