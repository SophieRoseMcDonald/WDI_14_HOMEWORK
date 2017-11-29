var daysOfTheWeek = [ 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

daysOfTheWeek.pop();
console.log(daysOfTheWeek)
daysOfTheWeek.unshift('Sunday');
console.log(daysOfTheWeek);

var newDaysOfTheWeek = [
  ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'],
  ['Saturday', 'Sunday']
];
newDaysOfTheWeek.pop();
console.log(newDaysOfTheWeek);
