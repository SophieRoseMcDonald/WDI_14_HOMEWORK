var request = require('request');
var city = process.argv[2];
url = ('http://api.openweathermap.org/data/2.5/weather?q=' + city + '&APPID=' + process.env.WEATHER_KEY

 request(url, function(error, response, body) {
    console.log(Math.round(JSON.parse(body).main.temp - 273.15)) + ' degrees Celcius');
});

// WEATHER_KEY=ddcef6addaaac95c6817bbb7cba59a07
