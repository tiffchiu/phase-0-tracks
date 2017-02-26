# Pseudocode
# - Ask designer/user to enter name, age, number of children, and decor theme
# 	- For age, convert to integer
# 	- For number of children, convert to integer
# - Create hash with the variables
# - Assign the input as a value to a hash
# - Print the hash back on the screen
# - Ask user if wants to change a value
# 	If Yes
# 	- User inputs name of key to change
# 	- Ask user for new value of key
# 	If No
# 	- User inputs "none"
# 	- Skip step
# - Print newest version of hash
# - Exit

puts "Client name:"
client_name = gets.chomp

puts "Client age:"
client_age = gets.chomp.to_i

puts "Number of children:"
number_of_children = gets.chomp.to_i

puts "Decor theme:"
decor_theme = gets.chomp

client_information = {
	name: client_name,
	age: client_age,
	children: number_of_children,
	theme: decor_theme
}

puts client_information

puts "What do you need to edit? If everything looks good, type 'none'."
edits = gets.chomp

if edits != "none"
	puts "Change #{edits} to:"
	changed_info = gets.chomp
	client_information[edits.to_sym] = changed_info
end

puts client_information