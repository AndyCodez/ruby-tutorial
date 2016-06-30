class CelestialBody
  attr_accessor :type, :name
end

bodies = Hash.new do |hash, key|
  body = CelestialBody.new
  body.type = "planet"
  hash[key] = body
end
p bodies

bodies['Mars'].name = 'Mars'
p bodies['Mars']
p bodies

bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'

p bodies['Europa']
p bodies
