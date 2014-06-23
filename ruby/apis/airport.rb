# Ask the user for an airport code
# Display the current delay at that airport.

require 'open-uri'
require 'json'

puts "Enter an airport code"
airport_code = gets.chomp

url = "http://services.faa.gov/airport/status/#{airport_code}.json"
data = JSON.parse(open(url).read)

if data["delay"] == 'true'
  puts data['status']['minDelay']
else
  puts "There's no delay."
end
