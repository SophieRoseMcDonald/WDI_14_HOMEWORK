console.log("publictransport");


// var glenWaverly = ['Flagstaff', 'Melbourne Central', 'Parliament', 'Richmond', 'Kooyong', 'Tooronga'];
// var sandringham = ['Southern Cross', 'Richmond', 'South Yarra', 'Prahran','Windsor'];
var station = ['Flinders Street', 'Richmond', 'East Richmond', 'Burnley', 'Hawthorn', 'Glenferrie'];
var origin = station.indexOf('Richmond');

//prompt('where does your journey start?');
// indexOf(origin);
var destination = [station.indexOf('Burnley')];
var one = destination.toString();
var route = station.slice(0, 3);
//prompt('where does your journey end?');
console.log(route);

//index of origin
//index of destination
//slice origin to destination
//convert to strings
