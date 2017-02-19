puts "How many employees will be processed?"
employees = gets.chomp.to_i

until employees == 0

	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	year_born = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you (y/n)?"
	garlic_bread = gets.chomp

	puts "Would you like to enroll in the company's health insurance (y/n)?"
	insurance = gets.chomp

	puts "What allergies do you have (type 'done' when finished)?"
	allergies = gets.chomp

	real_age = 2017 - year_born

	if age == real_age
		age_is_correct = true
	else
		age_is_correct = false
	end

	allergies_done = false

	until allergies_done 
		if allergies == "sunshine"
			allergies_done = true
		elsif allergies == "done"
			allergies_done = true
		else 
			allergies = gets.chomp
		end
	end

	if allergies == "sunshine"
		result = "Probably a vampire"
	elsif age_is_correct && (garlic_bread == "y" || insurance == "y")
		result = "Probably not a vampire"
	elsif !age_is_correct && garlic_bread == "n" && insurance == "n"		
		result = "Almost certainly a vampire"
	elsif !age_is_correct && (garlic_bread == "n" || insurance == "n")
		result = "Probably a vampire"
	elsif name == "Drake Cula" || name == "Tu Fang"
		result = "Definitely a vampire"
	else
		result = "Results inconclusive"
	end

	puts result

	employees = employees - 1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."