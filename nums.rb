#takes in a target number and an array
#if any two numbers in the array add up to the target number returns true
#if not returns false

def nums(target, *array)
	array.each_with_index do |a, x|
		array.each_with_index do |b, y|
			if x > y
				if a + b == target
					return true
				end
			end
		end
	end
	return false
end