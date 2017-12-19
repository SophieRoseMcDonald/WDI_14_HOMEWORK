# Title: Guess The Number
# Activity:
# You are to generate a basic "guess my number" game. The computer will pick a random number between 0 and 10. The user will guess the number until they guess correctly.
# Specification:
# The user should be asked to guess a number
# If the user's guess is correct, the user should see a congratulatory message
# If the user's guess is not correct, the user should be asked to guess the number again.
# Extensions:
# Let the user choose the maximum value (so they can play a long game with a random value between 0 and 10000, for example).
# Give feedback to the user: "Wrong, guess higher!" or "Wrong, guess lower!"
random_number = rand(10)+1
binding.pry
print 'guess a number between 1 and 10'

user_input = gets.to_i

puts user_input

while user_input != random_number do
  puts 'try again'
  user_input = gets.to_i
end

puts 'correct'

print 'choose a max number'
max_num = gets.to_i
random_number = rand(max_num.to_i)+1

puts user_input

while user_input != random_number do

  print 'guess a number'
  user_input = gets.to_i
  if user_input < random_number do
    puts 'guess higher'
  else user_input > random_number do
      puts 'guess lower'
    end
  end
end


  puts 'you guessed correctly'
