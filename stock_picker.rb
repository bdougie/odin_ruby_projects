# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
#  It should return a pair of days representing the best day to buy and the best day to sell. 
#  Days start at 0.

#  find the max price and if that day is greater than position 0 then sell
#  find the lowest price before the price and that is the buy price. 


def stock_picker(days)
	# buy low sell high
	high = 0
	low = 0
	best_profit = 0

	days[0..-2].each_with_index do |buy, i|
		days[(i+1)..-1].each_with_index do |sell, j| 
			if (sell - buy) > best_profit
				high = j + (i+1)
				low = i
				best_profit = sell - buy
			end
		end	
	end
	[low,high]	
end

puts stock_picker([17,3,6,9,15,8,6,1,10]).inspect
puts stock_picker([3,6,9,15,8,6,1,10,17]).inspect
puts stock_picker([3,6,9,15,8,6,10,1,17]).inspect
