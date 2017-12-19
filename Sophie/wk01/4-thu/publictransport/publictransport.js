console.log('hello')
//train line
var lines = {
  alamein: ['Flinders Street', 'Richmond', 'East Richmond', 'Burnley', 'Hawthorn', 'Glenferrie'],
  glenWaverly: ['Flagstaff', 'Melbourne Central', 'Parliament', 'Richmond', 'Kooyong', 'Tooronga'],
  sandringham: ['Southern Cross', 'Richmond', 'Southyarra', 'Prahran', 'Windsor']
}

//user input
var origin = prompt('Departing from: ')
var originIndex

var destination = prompt('Arriving at: ')
var departIndex

var intersection = 'Richmond'

// lineOriginIndexOf(lines, origin, destination);
//calculating number of stops
///find origin
function findOrigin(origin) {
  debugger
  if (lines.alamein.includes(origin) === true) {
    originIndex = lines.alamein
  } else if (lines.glenWaverly.includes(origin) === true) {
    originIndex = lines.glenWaverly
  } else {
    originIndex = lines.sandringham
  }
  console.log(originIndex)
}
findOrigin(origin);

//find destination
function findDestination(destination) {
  if (lines.alamein.includes(destination) === true) {
    departIndex = lines.alamein
  } else if (lines.glenWaverly.includes(destination) === true) {
    departIndex = lines.glenWaverly
  } else {
    departIndex = lines.sandringham
  }
  console.log(departIndex)
}
findDestination(destination);

///find station destIndex
var originIndexSt = originIndex.indexOf(origin)
var intersectionArrSt = originIndex.indexOf(intersection)
var intersectionDeptSt = departIndex.indexOf(intersection)
var departIndexSt = departIndex.indexOf(destination)
//console log stations
console.log('originIndexSt:' + originIndexSt);
console.log('intersectionArrSt:' + intersectionArrSt);
console.log('intersectionDeptSt:' + intersectionDeptSt);
console.log('departIndexSt:' + departIndexSt);

//jounrey
var lineOne = []
var lineTwo = []

if (originIndexSt < intersectionArrSt) {
  var lineOne = originIndex.slice(originIndex, intersectionArrSt + 1)
  var lineTwo = departIndex.slice(intersectionDeptSt + 1, departIndex + 1)
  console.log(lineOne)
  console.log(lineTwo)
} else {
  var lineOne = originIndex.slice(intersectionArrSt, originIndex + 1)
  var lineTwo = departIndex.slice(intersectionDeptSt, departIndex)
  console.log(lineOne)
  console.log(lineTwo)

}


if (originIndexSt < intersectionArrSt) {
  console.log(lineOne.join(" --> ") + " --> " + lineTwo.join(" --> "))
} else {
  console.log(lineOne.reverse().join(" --> ") + " --> " + lineTwo.reverse().join(" --> "))
}
//
//
// if (originIndex > -1 && destIndex > -1) {
//   var numberOfStops = departIndex - originIndex;
// }
// // console.log('origin: ' + origin);
// console.log('destination: ' + destination);
// // creating journey
// var journey = lines.alamein.slice(originIndex, departIndex + 1)
//
//
//
// // }
// //Object.keys(lines) javascript loop through properties.
// var outputToUser = function() {
//   console.log('origin: ' + origin);
//   console.log('destination: ' + destination);
//
//   console.log(numberOfStops + 'stops')
//
//   console.log(journey.join('--->'));
// }
// outputToUser();
// for (var i = originIndex; i <= destIndex; i++) {
//   if (i === destIndex) {
//     journey += stations[i]
//   } else {
//     journey += stations[i] + '--->'
// }
// }
// console.log(journey)
