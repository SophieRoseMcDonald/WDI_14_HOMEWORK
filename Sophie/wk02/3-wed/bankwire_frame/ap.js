console.log('hello')

var balance = document.querySelector('span.balance');
// var checking = document.querySelector('input.checking');
var savings = document.querySelector('input.savings')
var withdrawbtn = document.querySelector('#withdrawbtn')
var depositbtn = document.querySelector('#depositbtn')


function deposit() {
  var add = Number(savings.value) + Number(balance.textContent)
  balance.textContent = add

}

function withdraw() {
  var minus = Number(balance.textContent) - (savings.value)
  balance.textContent = minus
}

withdrawbtn.addEventListener('click', withdraw);
depositbtn.addEventListener('click', deposit);


// function add() {
// var result = Number(num1Input.value) + Number(num2Input.value)
// span.textContent = result;
//
// }



























// var account = function (balance){
//
//   account.balance = balance;
//
//   account.deposit = function (depositAmount) {
//     newBalance = account.balance - depositAmount;
//     console.log("Your balance is now " + newBalance);
//     if (newBalance <= 0) {
//       console.log("You have insufficient funds!!!");
//     }
//   };
//
//   account.withdraw = function (withdrawAmount){
//     newBalance = account.balance - withdrawAmount;
//     console.log("Your balance is now " + newBalance);
//     if (newBalance <= 0) {
//       console.log("You have insufficient funds!!!");
//     }
//
//   };
//
//   account.transfer = function (transferAmount){
//   }
//
//   console.log("Balance: " + balance);
// }
