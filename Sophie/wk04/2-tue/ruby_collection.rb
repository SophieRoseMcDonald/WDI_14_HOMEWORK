#
# Arrays
# Starting with the following array...

planeteers = ["Earth", "Wind", "Captain Planet", "Fire", "Water"]
# Access the second value in planeteers.
planeteers[1]

# Add "Heart" to the end of planeteers.
planeteers.push('heart')
# Remove "Captain Planet" from the array (without using a method).
planeteers.delete(planeteers[2])
# Combine planeteers with rangers = ["Red", "Blue", "Pink", "Yellow", "Black"] and save the result in a variable called heroes.
heros = {
  planeteers: ["Earth", "Wind", "Captain Planet", "Fire", "Water"],
  rangers: ["Red", "Blue", "Pink", "Yellow", "Black"]
}
#merge?
# Alphabetize the contents of heroes using a method. The Ruby documentation might help.
heros.sort
# Randomize the contents of heroes using a method. The Ruby documentation might help.
heros.rand(heros) #<incorrect

# Select a random element from heroes using a method. The Ruby documentation might help.
heros.rand(heros #,incorrect)
# Select all elements in heroes that begin with "B" using a method. The Ruby documentation might help.
#
# # Your answer here
# Hashes
# Initialize a hash called ninja_turtle with the properties name, weapon and radical. They should have values of "Michelangelo", "Nunchuks" and true respectively.
ninja_turtle = Hash.new
# # Your answer here
# Add a key age to ninja_turtle. Set it to whatever numerical value you'd like.
#
ninja_tutrtle[age:]
# Remove the radical key-value pair from ninja_turtle.
#
# # Your answer here
# Add a key pizza_toppings to ninja_turtle. Set it to an array of strings (e.g., ["cheese", "pepperoni", "peppers"]).
#
# # Your answer here
# Access the first element of pizza_toppings.
#
# # Your answer here
# Produce an array containing all of ninja_turtle's keys using a method. The Ruby documentation might help.
#
# # Your answer here
# Bonus
# Print out each key-value pair in the following format - "KEY's is equal to VALUE" -- using a method. The Ruby documentation might help.
#
# # Your answer here
