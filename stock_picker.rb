def stock_picker(prices)
	high = 0;
	best = [0,0]
	prices.length.times do |i|
		(prices.length - i).times do |j|
			profit = prices[j + i] - prices[i]
			if profit > high
				best = [i,j + i]
				high = profit
			end
		end
	end
	print best
end
stock_picker([17,3,6,9,15,8,6,1,10])