// PSEUDOCODE
// - Takes string as a parameter
// - Breaks string down into individual characters
// - Get a count of the number of letters in the word
// - Loop through and take the last character of the word
// - Add that last character to a new structure
// - Keep looping until all characters are inside the structure
// - Return that new word

function reverse(word) {
	var length = word.length - 1
	var new_word = ""

	for (var i = 0; i < word.length; i++) {
		new_word = new_word + word.charAt(length);
		var length = length - 1
	}

	return new_word
}

// DRIVER CODE

// console.log(reverse("javascript"))

if (1 == 1) {
	console.log(reverse("javascript"))
}
