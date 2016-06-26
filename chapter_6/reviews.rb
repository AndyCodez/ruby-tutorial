lines= []
File.open("reviews.txt") do |review_file|
lines = review_file.readlines
end

puts lines

relevant_lines = lines.find_all { |line| line.include?("Truncated") }

reviews = relevant_lines.reject { |line| line.include?("--") }.to_s

def find_adjective(string)
  words = string.split(" ")
  index = words.find_index("is")
  words[index + 1]
end

puts "adjective BELOW:"
adjective = find_adjective(reviews)
puts adjective

