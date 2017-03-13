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

// DRIVER CODE

var words = ["long phrase","longest phrase","longer phrase","supercalifragilisticexpialidocious"]

console.log(longest_word(words));

var person1 = {name: "Steven", age: 54};
var person2 = {name: "Tamir", age: 54};

console.log(matches(person1, person2));