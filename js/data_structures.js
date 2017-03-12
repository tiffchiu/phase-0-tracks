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


// CAR FUNCTION

function Cars(make, model, year) {
	this.make = make;
	this.model = model;
	this.year = year;

	this.completed = function() { console.log("Car has been completely built")};
};

var car = new Cars("Acura", "TL", 2014);
console.log(car);
// console.log(car.make);
car.completed();

var car2 = new Cars("Volkswagen", "Jetta", 2010);
console.log(car2);
car2.completed();

