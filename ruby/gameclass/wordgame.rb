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
