var daysOfTheWeek = [ 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

daysOfTheWeek.pop();
console.log(daysOfTheWeek)
daysOfTheWeek.unshift('Sunday');
console.log(daysOfTheWeek);

var newDaysOfTheWeek = [
  ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'],
  ['Saturday', 'Sunday']
];
newDaysOfTheWeek.splice([1]);
console.log(newDaysOfTheWeek);
