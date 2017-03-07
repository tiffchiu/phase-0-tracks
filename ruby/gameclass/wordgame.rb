# WORD GAME PSEUDOCODE

# - One user enters a word to be guessed to be stored as a variable
# - Get the length of the word and prints out empty dashes for the length of the word
# - Assigns length +2 as the number of guesses
# - Ask other user for a letter (guess)
# - Until the number of guess is equal to the length of the word OR word is guessed
	# - Takes a letter as a guess (input from user)
	# - Guess count increases by one
		# - IF the letter matches one from the word, print that letter in the line (replaces the blank dash) and
		# - IF NOT, say "Not this time!"
	# - If guess is a repeat, guess count does not increase 
# - IF word is guessed, print congratulatory message and ends guesses
# - IF guess count is reached and word is not guessed, print a taunting message

class WordGame

	attr_reader :secret_word
	attr_accessor :guess_count, :is_over, :word_display, :already_guessed

	def initialize(secret_word)
		@secret_word = secret_word
		@guess_count = 0
		@is_over = false
		@already_guessed = ""
	end

	# this is a string
	def gameboard
		@gameboard = "_" * secret_word.length
		@gameboard_display = @gameboard.gsub(/./) {|s| s + ' '}.rstrip!
	end

	# def gameboard_display
	# 	p @gameboard
	# 	# @gameboard.gsub(/./) {|s| s + ' '} 
	# end

	def check_letter(char)
		if @already_guessed.include?(char)
			puts "You've already guessed that one. Try another!"

		elsif @secret_word.include?(char)

			char_index = 0
	  		
	  		@secret_word.each_char do |secret_char|
	  			if secret_char == char
	  			@gameboard[char_index] = secret_char
	  			end
	  		
	  		char_index += 1
	  		
			end	  	

	  		@gameboard.each_char {|c| print c, ' ' }
	  		p @guess_count += 1
	  			

	  	else
	  		@gameboard.each_char {|c| print c, ' ' }
	  		p @guess_count += 1
		end

		@already_guessed << char
		
	end

	def game_over
  		if @gameboard == @secret_word
  			@is_over = true
  			p "You got it, you genius!"
  		elsif @guess_count == @secret_word.length + 3
  			@is_over = true
  			p "Too bad, so sad :P"
  		end
  		@is_over
  	end
end



# USER INTERFACE
puts "Hello Player One! Enter a word for Player Two to guess:"
secret_word = gets.chomp
game = WordGame.new(secret_word)
puts "Good one! Let's start the game."
puts "*****"

puts "Welcome to the WordGame, Player Two! Guess this word:"
p game.gameboard
puts "You have #{secret_word.length + 3} guesses. Good luck!"

while !game.game_over
	puts "\nGuess a letter:"
	char = gets.chomp
	game.check_letter(char)
end