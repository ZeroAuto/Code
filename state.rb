
class User
	def initialize(s)
		@state = s.gsub(/\W/, "")
		unless @state.length == 2
			raise "invalid state code"
		end
	end

	def state
		@state.upcase
	end
end

a=User.new('az')
b=User.new('ca')
c=User.new('tx')

states = Array.new

2.times {states << a}
9.times {states << b}
7.times {states << c}

#takes in an array of users
#if the state code of a user is not part of existing hash
#the function adds that code adds a key with a value of one
#if the state code has already been added to the hash
#the value of the state code key is increased by one
#the function returns the code of the state with the largest value
#and that value
def loop(*users)
	states = Hash.new
	users.each do |user|
		if states.has_key?(user.state)
			states[user.state]+=1
		else
			states[user.state]=1
		end
	end
	mx = states.values.max
	state = states.select { |k, v| v == mx }
	return state
end

puts loop(*states)