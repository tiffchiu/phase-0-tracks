var colors = ["magenta", "rose gold", "blue", "purple"];
var horseNames = ["Bob", "Ed", "Joe", "Bobalina"];

colors.push("aquamarine");
horseNames.push("Joanna");
horseNames.push("Edith")

horseDetails = {}

if (colors.length == horseNames.length) {
	for (var i = 0; i < colors.length; i++) {
		horseDetails[horseNames[i]] = colors[i]
	}
}

console.log(horseDetails)