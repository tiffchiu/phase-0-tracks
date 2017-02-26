# Pseudocode
# - Take a string with a first and a last name
# - Split the string into two separate words
# - Change the order of the two words
# - Change the uppercase letters into lowercase
# - Convert each name string into individual character strings
# - If letter is a consonant
# 	- Advance to the next letter in alphabet
# - If letter is vowel
# 	- Adcance to next vowel in a, e, i, o, u
# - Add all the characters together into a string
# - Capitalize the first letter of each name

def alias_creator (realname)

# Split as two separate words, changes the order, and combines into one
# Returns as a string
reversed_name = realname.split(' ').reverse!.join(' ')

# Creates an array of the letters in the name
name_array = reversed_name.chars

# p name_array

	vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
	
	replace_vowels = {
				"a" => "e", 
				"e" => "i", 
				"i" => "o",
				"o" => "u", 
				"u" => "a",
				"A" => "E", 
				"E" => "I", 
				"I" => "O",
				"O" => "U", 
				"U" => "A"
					 }
	
	consonants_by_vowels = ["z", "d", "h", "n", "t", "Z", "D", "H", "N", "T"]
	
	replace_consonants = {
				"z" => "b", 
				"d" => "f", 
				"h" => "j",
				"n" => "p", 
				"t" => "v",
				"Z" => "B", 
				"D" => "F", 
				"H" => "J",
				"N" => "P", 
				"T" => "V"
					 }
	
	
	name_array.map! do |letter|
		if consonants_by_vowels.include?(letter)
		 	replace_consonants.fetch(letter)
		elsif vowels.include?(letter)
			replace_vowels.fetch(letter)
		elsif letter == " "
			letter = " "
		else
		letter.next
		end
	end
	
	spy_name = name_array.join

p spy_name

end

alias_creator("Felicia Torres")