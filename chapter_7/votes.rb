lines = []
File.open("votes.txt") do |file|
lines = file.readlines
end

votes = Hash.new(0) 

lines.each do |line|
  name = line.chomp   
  name.upcase! #Normalize
  votes[name] += 1
end

votes.each do |key,value|
    puts "#{key}: #{value}"
end
