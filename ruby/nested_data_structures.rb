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

# How many items are in the kitchen
p the_bohn_residence['Kitchen'].length

# Add myself to my own room
p the_bohn_residence['Jess Room'].push('Jess')

# Mispelled my cat's name, have to correct it to be punny
p the_bohn_residence['Jess Room'][1][1] = 'The Great Catsby'

# Reverse order of items in garage to represent importance
p the_bohn_residence['Garage'].reverse

# I folded my laundry and put it away, so we don't need that anymore
p the_bohn_residence['Jess Room'].delete_at(4)

# Is Zeus with my mom in her office
p the_bohn_residence['Julie Office'].include?('Zeus')

# Our dog Zeus is always with my mom so he needs to be with her
p the_bohn_residence['Julie Office'].push('Zeus')
p the_bohn_residence['Julie Office'].include?('Zeus')

# Push combine both arrays for key 'Jess Room'
p the_bohn_residence['Jess Room'].flatten

# Did I include any bathrooms?
p the_bohn_residence.key?('Bathroom')

# List rooms included
p the_bohn_residence.keys

# List items in the rooms
p the_bohn_residence.values