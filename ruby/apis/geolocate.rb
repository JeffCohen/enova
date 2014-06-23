# A user should be provided with an input prompt.
# A user can enter any full street address (street number, street name, street suffix, city, state, zip code) and the program should return latitude and longitude coordinates.

# Use the Google Geocoding JSON API to output the latitude and longitude.
require 'open-uri'
require 'json'

puts "Enter an address:"
user_input = gets.chomp
address = URI.encode(user_input)

puts address

# To do: call the Google Geocoding API to get JSON results

url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{address}"
raw_data = open(url).read
data = JSON.parse(raw_data)

coordinates = data["results"][0]["geometry"]["location"]
puts "The latitude is #{coordinates["lat"]} and longitude is #{coordinates["lng"]}"





