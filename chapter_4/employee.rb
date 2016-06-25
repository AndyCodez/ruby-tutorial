class Employee
attr_reader :name

	def name=(name)
		if name == ""
			raise "Name cannot be blank"
		end
		@name = name
	end

	def print_name
		puts "Name: #{name}"
	end
	
end

class SalariedEmployee < Employee
	attr_reader :salary

	def salary=(salary)
		if salary < 0
			raise "A salary of #{salary} aint valid"
		end
		@salary = salary
	end

	def print_pay_stub
		print_name
		pay_for_period = (@salary / 365.0) * 14
		formatted_pay = format("%.2f", pay_for_period)
		puts "Pay this period: $#{formatted_pay}"
	end

end