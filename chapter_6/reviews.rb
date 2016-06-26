lines= []
File.open("reviews.txt") do |review_file|
lines = review_file.readlines
end

puts lines

relevant_lines = lines.find_all { |line| line.include?("Truncated") }

puts "Relevant lines BELOW:"
puts relevant_lines
