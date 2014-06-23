# Ask the user for an airport code
# Display the current delay at that airport.

require 'open-uri'
require 'json'


class Airport

  attr_accessor :code
  attr_accessor :sport

  def self.all_codes
    ['ORD', "MDW", "SFO"]
  end

  def min_delay
    url = URI.encode("http://services.faa.gov/airport/status/#{code}.json")
    data = JSON.parse(open(url).read)

    if data["delay"] == 'true'
      return data['status']['avgDelay']
    end

    return 0
  end

end



my_airport = Airport.new
my_airport.code = "SFO"
puts my_airport.code

puts my_airport.min_delay

# puts "Enter an airport code"
# airport_code = gets.chomp

# url = URI.encode("http://services.faa.gov/airport/status/#{airport_code}.json")
# data = JSON.parse(open(url).read)

# if data["delay"] == 'true'
#   puts data['status']['minDelay']
# else
#   puts "There's no delay."
# end
