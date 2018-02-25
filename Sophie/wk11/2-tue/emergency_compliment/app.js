var express = require('express');
var app = express();
const PORT = 8080;
var _ = require('underscore');
// app.set('views', './views');
app.set('view engine', 'ejs');

// app.get('/', function(req,res) {
//   //send is for strings
//   res.send('hello again express')
// });
app.listen(8080, function(){
  console.log('listening on port 8080')
});
app.get('/',function(req,res){
  res.render('compliment', {
      compliments: _.sample(compliments),
      colors: _.sample(colors)
  })
})

app.get('/:name',function(req,res) {
  res.render('hello', {
    // name: req.params.name,
    compliments: _.sample(compliments),
    colors: _.sample(colors)
  })
})

// const name = req.params.name

const compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Shut up and take my money",
  "It's almost beer o'clock",
  "The Force is strong with you"
]
const colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]
