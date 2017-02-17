puts "What's the hamster's name?"
hamster_name = gets.chomp

puts "What's the hamster's volume level (from 1-10)?"
volume = gets.chomp.to_i
# puts volume.class

puts "What's the hamster's fur color?"
fur_color = gets.chomp
puts "#{fur_color}"

puts "Is the hamster a good candidate for adoption (y/n)?"
adopt = gets.chomp
puts "#{adopt}"

puts "What is the hamster's age?"
age = gets.chomp.to_f
# puts age.class

if age == 0.0
	age = nil
end

puts "HAMSTER INFO"
puts "Name: #{hamster_name}"
puts "Volume: #{volume}"
puts "Fur color: #{fur_color}"
puts "Good for adoption: #{adopt}"
puts "Age: #{age}"


