console.log('hello')

var balance = document.querySelector('span.balance');
// var checking = document.querySelector('input.checking');
var savings = document.querySelector('input.savings')
var withdrawbtn = document.querySelector('#withdrawbtn')
var depositbtn = document.querySelector('#depositbtn')
var savaccount = document.querySelector('#savingscontainer')
// var result = 0;

function deposit() {
  var add = Number(savings.value) + Number(balance.textContent);

  if (isNaN(add)) {
    return
  }
  balance.textContent = add;
  savaccount.style.backgroundColor = 'lightgreen';
  }


function withdraw() {
  // debugger
  var minus = Number(balance.textContent) - (savings.value)
    balance.textContent = minus;

  if (balance < 0) {
    alert('insufficient funds');
  } else if (balance === 0) {
    savaccount.style.backgroundColor = 'red';
    balance.textContent = 0;

  }
}
withdrawbtn.addEventListener('click', withdraw);
depositbtn.addEventListener('click', deposit);

//CHECKING account
var checkingbalance = document.querySelector('span.checkingbal');
// var checking = document.querySelector('input.checking');
var checking = document.querySelector('input.checking')
var withdrawbtn = document.querySelector('#checkwithdrawbtn')
var depositbtn = document.querySelector('#checkdepositbtn')
var checkaccount = document.querySelector('#checkingcontainer')


function checkDeposit() {
  var checkAdd = Number(checking.value) + Number(checkingbal.textContent);

  if (isNaN(checkAdd)) {
    return
  }
  checkingbal.textContent = checkAdd;
  checkaccount.style.backgroundColor = 'lightgreen';
  }


function checkWithdraw() {
  // debugger
  var checkMinus = Number(checkingbal.textContent) - (checking.value)
    checkingbal.textContent = checkMinus;

  if (checkingbal < 0) {
    checkaccount.style.backgroundColor = 'red';
    alert('insufficient funds');
  } else if (checkingbal === 0) {
    checkaccount.style.backgroundColor = 'orange';

  }
}

checkwithdrawbtn.addEventListener('click', checkWithdraw);
checkdepositbtn.addEventListener('click', checkDeposit);









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
