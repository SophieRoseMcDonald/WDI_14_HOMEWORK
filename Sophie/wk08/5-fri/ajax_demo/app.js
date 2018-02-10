console.log('console check');

// using s=jaws to request a list of movies
// use javascript dom creation to show it in the page wrapped in paragraphs for each movie

var options = {
  url: 'http://www.omdbapi.com/?apikey=2f6435d9&s=jaws',
  method: 'get' // default
}

var $container = $('.container');

$.ajax(options).done(function(res){

    res.Search.forEach(function(movie) {

      var newDivElem = $('<div>');
      var newH2Elem = $('<h2>');
      newH2Elem.text(movie.Title);
      newDivElem.append( newH2Elem );

      $container.append( newDivElem );
    });

});
