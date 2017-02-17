puts "What's the hamster's name?"
hamster_name = gets.chomp
puts "#{hamster_name}"

puts "What's the hamster's volume level (from 1-10)?"
volume = gets.chomp.to_i
puts volume.class

puts "What's the hamster's fur color?"
fur_color = gets.chomp
puts "#{fur_color}"

puts "Is the hamster a good candidate for adoption (y/n)?"
adopt = gets.chomp
puts "#{adopt}"

puts "What is the hamster's age?"
age = gets.chomp.to_f
puts age.class

if age == ""
	age = nil
	puts "n/a"
end

