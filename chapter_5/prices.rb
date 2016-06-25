#Method to return total
def total(prices)
	amount = 0
	prices.each do |price|
		amount += price		
	end
	amount
end

#Method to process a refund(balance)
def refund(prices)
	amount = 0
	prices.each do |price|
		amount -= price		
	end
	amount
end

#Method to compute discount
def show_discounts(prices)
	prices.each do |price|
		amount_off = price / 3.0		
	end
end