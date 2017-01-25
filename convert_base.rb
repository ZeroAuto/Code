def convert(base, value)
	sum = 0
	new_value = value.to_s.downcase
	char_array = new_value.split("").reverse
	char_array.each_with_index do |x, i|
		if x.ord >= 97 && x.ord <= 122
			digit = x.ord - 87
		else
			digit = x.to_i
		end
		sum += (digit * base**i)
	end
	puts sum
end
