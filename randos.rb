require 'csv'

def random_names_and_emails_csv(x)
	s = x.to_s
	CSV.open("randos_#{s}", 'wb') do |csv|
		x.times do
			first_name = (0...8).map { (65 + rand(26)).chr }.join.downcase
			last_name = (0...8).map { (65 + rand(26)).chr }.join.downcase
			company = (0...8).map { (65 + rand(26)).chr }.join.downcase
			email = "#{first_name}.#{last_name}@#{company}.fake"
			csv << [first_name, last_name, email]
		end
	end
end