For this assignment, you will be editing the directions.rb, geolocate.rb and weather.rb files located in this repository. Each Ruby script should expect user input (using `gets`) and produce specific output (using `puts`). 


### geolocate.rb
A user should be provided with an input prompt.
A user can enter any full street address (street number, street name, street suffix, city, state, zip code) and the program should return latitude and longitude coordinates.

Use the <a
href='https://developers.google.com/maps/documentation/geocoding/'>Google Geocoding JSON API</a> to convert the address to latitude and longitude.

Example:
<br />
<br />
<img src='https://uchicago.s3.amazonaws.com/geolocate.png'>


### directions.rb
A user should be provided with two input prompts.
A user can enter any origin address and any destination address.
The program should return the total traveling distance in miles and the
total travel time in hours and minutes.

Use the the <a
href='https://developers.google.com/maps/documentation/directions/'>Google
Directions JSON API</a> to retrieve travel data.

Example:
<br />
<br />
<img src='https://uchicago.s3.amazonaws.com/directions.png'>


### weather.rb
A user should be provided with an input prompt.
A user can enter any address and the program should return the temperature in Fahrenheit.

Use the <a
href='http://openweathermap.org/API'>OpenWeatherMap JSON API</a> to pull weather data based on the user input.

Example:
<br />
<br />
<img src='https://uchicago.s3.amazonaws.com/weather.png'>

