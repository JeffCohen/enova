# A review of:
# variables, files, #each, arrays, and hashes

data = open("movies.csv").readlines

# 1. Which movie is the oldest?

# ANSWER

# Here is the one-liner:
# puts data.collect { |movie_row| movie_row.split(',').last.to_i }.sort.first

# Here it is in steps:

years = data.collect do |movie_row|
  movie_row.split(',').last.to_i
end

years = years.sort  # sorts in ascending order
puts years.first

# 2. Which movie has the longest title?



