# Jessica Bohn
# 05/07/16

# 5.5 : Nested Data Structures

# I am going to be cheesy and take the idea from Jennifer's idea and model my house in this nested data Structures

the_bohn_residence = {
	'Living Room' => [
		'2-piece recliner', 
		'wobbly fan', 
		'television', 
		'James'],
	'Kitchen' => [
		'leaky refrigerator',
		 'electric stove',
		 'pantry'],
	'Julie Office' => [
		'Julie',
		'large fancy desk',
		'small fancy desk',
		'television', 
		'supply cabinet', 
		'files'],
	'Garage' => [
		'junk', 
		'refrigerator', 
		'Jeep Wrangler'],

	'Jess Room' => [
		'queen size bed', 
		['Lambda Lambda Lambda', 
			'The Great Gatsby'], 
		'37-inch TV', 
		'Xbox One', 
		'unfolded laundry'],

	'Parents Room' => [
		'king size bed',
		'televsion',
		'Athena',
		'walk-in closet']

}

p the_bohn_residence

p the_bohn_residence['Jess Room'][1][0]

# Add myself to my own room
p the_bohn_residence['Jess Room'].push('Jess')

# Mispelled my cat's name, have to correct it to be punny
p the_bohn_residence['Jess Room'][1][1] = 'The Great Catsby'
