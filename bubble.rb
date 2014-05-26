#http://stackoverflow.com/questions/11091434/using-the-bubble-sort-method-for-an-array-in-ruby

array = [87, 5, 33, 56, 7, 43, 9]
list = ["hi", "hello", "hey", "z"]

def bubble_sort(array)
	return array if array.size <= 1

	swapped = true
	while swapped do 
		swapped = false
		0.upto(array.size-2) do |i| # -2 is checking up to the second to last position.
			if array[i] > array [i+1]
				array[i], array[i+1] = array[i+1], array[i] 
				swapped = true
			end
			puts array.inspect # prints array per itteration

		end
		# puts array.inspect # prints array per comlpete itteration
	end
end

# bubble_sort(array).inspect

def bubble_sort_by(list) 
	return list if list.size <= 1

	swapped = true
	while swapped do 
		swapped = false
		0.upto(list.size-2) do |i| # -2 is checking up to the second to last position.
			if list[i] > list [i+1]
				list[i], list[i+1] = list[i+1], list[i] if yield(list[i+1], list[i]) > 0
				swapped = true
			end
		end
	end
	puts list # prints list per comlpete itteration

end


bubble_sort_by(list) { |left, right| right.length - left.length }



