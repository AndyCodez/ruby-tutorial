#Method to return total
def total(prices)
	amount = 0
	index = 0

	while index < prices.length
		amount += prices[index]
		index += 1
	end
	amount
end

#Method to process a refund(balance)
def refund(prices)
	amount = 0
	index = 0

	while index < prices.length
		amount -= prices[index]
	end
	amount
end

#Method to compute discount
def show_discounts(prices)
	index = 0

	while index < prices.length
		amount_off = prices[index] / 3.0
		puts format("Your discount: $%.2f", amount_off)
		index += 1
	end
end