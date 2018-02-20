let transactionHistory = [];
let balance = 0;

class Atm {
  constructor(type, money){
    this.type = type;
    this.money = money;
  }

  withdraw(amount){
    balance = this.money - amount;
    this.money = balance;
    transactionHistory.push(amount);
    return balance;
  }

  deposit(amount){
    balance = this.money + amount;
    this.money = balance;
    transactionHistory.push(amount);
    return balance;
  }

  showBalance(){
    return console.log(balance);
  }
}


let account = new Atm('savings', 0);

account.deposit(50);
account.showBalance();

account.withdraw(80);
account.showBalance();

account.deposit(50);
account.showBalance();
