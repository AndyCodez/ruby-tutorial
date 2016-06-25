class Employee
attr_reader :name, :salary

	def initialize
		@name = "Anonymous"
		@salary = 0.0
	end

	def name=(name)
		if name == ""
			raise "Name cannot be blank"
		end
		@name = name
	end

	def salary=(salary)
		if salary < 0
			raise "A salary of #{salary} aint valid"
		end
		@salary = salary
	end


	def print_pay_stub
		puts "Name:" #{name}
		pay_for_period = (@salary / 365.0) * 14
		formatted_pay = format("%.2f", pay_for_period)
		puts "Pay this period: $#{formatted_pay}"
	end
end

