// PSEUDOCODE

// - Take an array of words or phrases
// - Identify and assign the first word as "benchmark word"
// - Find the length of that first word
// - Loop through the rest of the array to find the the length of the words
// - If the length of any of the words are longer than the first, it replaces the original word as benchmark
// - If not, then it does nothing
// - After running through the entire array, print that benchmark word 

function longest_word(words) {
	var benchmark = ""

	for (i = 0; i < words.length; i++) {
		if (words[i].length > benchmark.length) {
			benchmark = words[i]
		}
	}
	return benchmark
}

// DRIVER CODE

var words = ["long phrase","longest phrase","longer phrase","supercalifragilisticexpialidocious"]

console.log(longest_word(words))
