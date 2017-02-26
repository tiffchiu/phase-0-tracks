# Nested Data Structure

hogwarts = {
	gryffindor: {
		founder: 'Godric Gryffindor',
		head_of_house: [
			"Albus Dumbledore",
			"Minerva McGonagall"
		],
		traits: [
			"courage",
			"daring",
			"nerve",
			"chivalry"
		]
	},
	
	hufflepuff: {
		founder: 'Helga Hufflepuff',
		head_of_house: [
			"Helga Hufflepuff",
			"Pomona Sprout"
		],
		traits: [ 
			"dedication",
			"hard work",
			"fair play",
			"patience",
			"kindness",
			"tolerance",
			"loyalty"
		]
	},
	
	ravenclaw: {
		founder: 'Rowena Ravenclaw',
		head_of_house: [
			"Rowena Ravenclaw",
			"Filius Flitwick"
		],
		traits: [ 
			"intelligence",
			"wit",
			"wisdom",
			"creativity",
			"originality",
			"individuality",
			"acceptance"
		]
	},
	
	slytherin: {
		founder: 'Salazar Slytherin',
		head_of_house: [
			"Salazar Slytherin",
			"Severus Snape",
			"Horace Slughorn"
		],
		traits: [ 
			"resourcefulness",
			"cunning",
			"ambition",
			"self-preservation",
			"fraternity"
		]
	}
}


hogwarts[:gryffindor][:head_of_house][0]
hogwarts[:gryffindor][:traits].push("bravery")