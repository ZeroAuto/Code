#takes in a string and returns true
#only if the number of digits in the string is equal to 10

def phone(n)
	if n.gsub(/\D/, "").length == 10
		return true
	else
		return false
	end
end