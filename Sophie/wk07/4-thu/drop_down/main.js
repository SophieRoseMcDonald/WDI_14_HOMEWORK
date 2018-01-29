var backgroundImage = document.querySelector('body')
console.log('sanity check')


var cityType = document.querySelector('#city-type');

var NYC = document.createElement('option');
var SF = document.createElement('option');
var LA = document.createElement('option');
var SYD = document.createElement('option');
var AUSTIN = document.createElement('option');

NYC.value = 'NYC';
NYC.text = 'NYC';

SF.value = 'SF';
SF.text = 'SF';

LA.value = 'LA';
LA.text = 'LA';

SYD.value = 'SYD';
SYD.text = 'SYD';

AUSTIN.value = 'AUSTIN';
AUSTIN.text = 'AUSTIN';

cityType.add(NYC, null);
cityType.add(SF, null);
cityType.add(LA, null);
cityType.add(SYD, null);
cityType.add(AUSTIN, null);

function changeImage() {
  switch (cityType.value) {
    case 'NYC':
      backgroundImage.classList.add('nyc')
      break

    case 'SF':
      backgroundImage.classList.add('sf')
      break

    case 'LA':
      backgroundImage.classList.add('la')
      break

    case 'SYD':
      backgroundImage.classList.add('sydney')
      break

    case 'AUSTIN':
      backgroundImage.classList.add('austin')
      break
  }
}


if (cityType.value == 'NYC') {
  backgroundImage.classList.add('nyc')
} else if (cityType.value == 'SF') {
  backgroundImage.classList.add('sf')
} else if (cityType.value == 'LA') {
  backgroundImage.classList.add('la')
} else if (cityType.value == 'SYD') {
  backgroundImage.classList.add('sydney')
} else if (cityType.value == 'AUSTIN') {
  backgroundImage.classList.add('austin')
}

cityType.addEventListener('change', changeImage)
