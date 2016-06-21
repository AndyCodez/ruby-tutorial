class Bird
	attr_accessor :name, :age 
	
	def talk
		puts "Chirp! Chirp!"
	end	

	def move(destination)
		puts "#{@name} flies to the #{destination}."
	end

	def report_age
		puts "#{@name} is #{@age} years old."
	end
end

class Dog
	
	attr_reader :name, :age

	def name=(value)
		if value == ""
			raise "Name can't be blank!"
		end
		@name = value
	end

	def age=(value)
		if value < 0
			raise "An age of #{value} isn't valid!"
		end
	end

	def talk
		puts "#{name} says bark!"
	end

	def move(destination)
		puts "#{name} runs to the #{destination}."
	end

	def report_age
		puts "#{@name} is #{@age} years old."
	end
end

class Cat
	def talk
		puts "Meow!"	
	end

	def move(destination)
		puts "Running to the #{destination}."
	end	
end

#Create new instances of our classes

bird = Bird.new
dog = Dog.new
cat = Cat.new

#Call some methods on the instances

bird.move("tree")
dog.talk
bird.talk
cat.move("house")

