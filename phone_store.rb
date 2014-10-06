#takes in an array of phone numbers
#stores phone numbers in a series of hashes

def store_phone_numbers(*array)
	phone_numbers = Hash.new

	array.each do |i|
		num = i.gsub(/\D/, "")
		if num[0] == "1" && num.length == 11
			num.slice(0)
		end
		unless num.length != 10
			a = num[0..2]
			b = num[3..5]
			c = num[6..9]
			if phone_numbers.has_key?(a)
				if phone_numbers[a].has_key?(b)
					phone_numbers[a][b].push(c)
				else
					phone_numbers[a][b]=[]
					phone_numbers[a][b].push(c)
				end
			else
				phone_numbers[a]={}
				phone_numbers[a][b]=[]
				phone_numbers[a][b].push(c)
			end
		end
	end
	return phone_numbers
end