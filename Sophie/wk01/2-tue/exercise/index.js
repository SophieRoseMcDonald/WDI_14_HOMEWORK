var name = prompt('What is your name?');

console.log('Your name is ' + name + '!');

var menu = prompt('Steak, fruit salad, tofurkey, pork chops. What would you like to eat?')

if (menu === 'fruit salad' || menu === 'tofurkey') {
  console.log('This cuisine is vegan friendly');
} else {
  console.log('Vegans beware!');
}

var numberOfChildren = 1
var partnerName = 'Joel';
var geoLocation = 'Melbourne';
var jobTitle = 'Web dev';
console.log('You will be a ' + jobTitle + ' in ' + geoLocation + ' and married to ' + partnerName + ' with ' + numberOfChildren + ' kids.');

var currentYear = 2017;
var birthYear = prompt('What year are you born?');
console.log ('You are ' + (currentYear - birthYear));

var currentAge = prompt('What is your age?');
var maxAge = 50;
var amountPerDay = 3;
var yearsLeft = (maxAge - currentAge);
var yearlyAmount = (amountPerDay * 365);
console.log(yearsLeft * yearlyAmount);
