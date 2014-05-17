# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
#  It should return a pair of days representing the best day to buy and the best day to sell. 
#  Days start at 0.

#  find the max price and if that day is greater than position 0 then sell
#  find the lowest price before the price and that is the buy price. 


def stock_picker(days)
	# buy low sell high
	high = days.sort
	low = array.sort{|x,y| y <=> x }
	best_profit = high - low

	i = 0
	while i < days.size # limits the check to the amount of days provided.
		high = high[i]
		low = low[i]
# use must buy before you can sell. 
		if days.index(low) < days.index(high)
			return [days.index(low), days.index(high)]
		else
			next_high = high[i + 1]
			next_low = low[i + 1]
			if (high - next_low) > (next_high - low)
				if days.index(next_low) < days.index(high)
					return [days.index(next_low), day.index(max)]
				end
			else
				if days.index(low) < days.index(next_high)
					return [days.index(low), days.index(next_high)]
				end
			end
		end
		i += 1
	end
end


print stock_picker([17,3,6,9,15,8,6,1,10])
# stock_picker([3,6,9,15,8,6,1,10,17])
# stock_picker([3,6,9,15,8,6,10,1,17])

# this is waht I started to do with hash, but got a little too complicated

	# best_day = Hash.new(0)
	# days.each_with_index { |price, day| best_day[price] = day	}
	# puts best_day
