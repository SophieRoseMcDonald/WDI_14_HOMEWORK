# Array and Hash access
# A. Given the following data structure:
a = ["Anil", "Erik", "Jonathan"]
# How would you return the string "Erik"?
a[1]
# How would you add your name to the array?
a.push 'sophie' #can alsi use a shuffle <<
# B. Given the following data structure:
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# How would you return the string "One"?
h[1]
# How would you return the string "Two"?
h[:two]
# How would you return the number 2?
h['two']
# How would you add {3 => "Three"} to the hash?
h[3] = 'three'
# How would you add {:four => 4} to the hash?
h[:four] = 4
# C. Given the following data structure:
is = {true => "It's true!", false => "It's false"}
# What is the return value of is[2 + 2 == 4]?
"It's true!"
# What is the return value of is["Erik" == "Jonathan"]?
"It's false"
# What is the return value of is[9 > 10]?
"It's false"
# What is the return value of is[0]?
nil
# What is the return value of is["Erik"]?
nil
# D. Given the following data structure:
users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}
# How would you access Jonathan's Twitter handle (i.e. the string "tronathan")?
users['Jonathan'][:twitter]
# How would you add the number 7 to Erik's favorite numbers?
users['Erik'][:favorite_numbers] << 7 #<< is called a shuffle
# How would you add yourself to the users hash?
users['sophie']
# How would you return the array of Erik's favorite numbers?
users['Erik'][:favorite_numbers]
# How would you return the smallest of Erik's favorite numbers?
users['Erik'][:favorite_numbers].min
# How would you return an array of Anil's favorite numbers that are also even?
binding.pry
# users['Anil'][:favorite_numbers].each { |value| value.even?}
users['Anil'][:favorite_numbers].select(&:even?) #&: proc
#[1, 2, 3, 4].select { |num| num.odd? } <= same as above.

# How would you return an array of the favorite numbers common to all users?
[12, 42, 75]&[8, 12, 24]&[12, 14, 85] == [12]
# users.map { |person| person[:favorite_numbers] }.inject(:&)
users['Erik'][:favorite_numbers] & users['Jonathan'][:favorite_numbers] & users['Anil'][:favorite_numbers]
# How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
# users.
users['Erik'][:favorite_numbers].concat(users['Jonathan'][:favorite_numbers]).concat(users['Anil'][:favorite_numbers]).sort.uniq
