def day_trader(array_price)
	
	best_day = []
	benef = 0

	for i in (0...array_price.length)
		for j in (i+1...array_price.length)
			if benef < (array_price[j] - array_price[i])
				benef = array_price[j] - array_price[i]
				best_day[0] = i
				best_day[1] = j
			end
		end
	end

	return best_day

end

