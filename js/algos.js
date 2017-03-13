// PSEUDOCODE

// LONGEST WORD FUNCTION
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

// KEY-VALUE FUNCTION
// - Gets two objects
// - Identifies the keys of each object
// - Compares the keys of the objects to each other
// - Get the values of each object
// - Compares the values to each other

function matches(object1, object2) {
	var items1 = Object.keys(object1);
	var items2 = Object.keys(object2);
	
	for (i = 0; i < items1.length; i++) {
		if (items1[i] == items2[i]) {
			return true;
		} 
		else {
			return false;
		}
	}
}

// RANDOM GENERATOR FUNCTION

function random_test_data(times) {
	var data_array = [];

	var alphabet = "abcdefghijklmnopqrstuvwxyz";

	for (i = 0; i < times; i++) {
		word_length = Math.floor((Math.random() * 10) + 1);
		var letters_array = [];

			for (z = 0; z < word_length; z++) {
				var random_letter = alphabet.charAt(Math.floor((Math.random() * 25)));
				letters_array.push(random_letter);
			}

			var random_words = letters_array.join("");
			data_array.push(random_words);

	}

	return data_array;

}

// DRIVER CODE

var words = ["long phrase","longest phrase","longer phrase","supercalifragilisticexpialidocious"]

console.log(longest_word(words));

var person1 = {name: "Steven", age: 54};
var person2 = {name: "Tamir", age: 54};

console.log(matches(person1, person2));

var test_data = random_test_data(10);
console.log(test_data);
console.log(longest_word(test_data));