class CelestialBody
  attr_accessor :type, :name
end

default_body = CelestialBody.new
default_body.type = 'planet'
bodies = Hash.new(default_body)
p bodies

bodies['Mars'].name = 'Mars'
p bodies['Mars']
p bodies

bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'

p bodies['Europa']
