class BankAccount {
  double _balance = 0;

  BankAccount({double balance = 0}) : _balance = balance;
  double get balance => _balance;
  deposit(double amount) {
    _balance += amount;
  }

  bool withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      return true;
    }
    return false;
  }

  @override
  String toString() {
    return 'The blance is $balance USD.';
  }
}

class SavingAccount extends BankAccount {
  double _interestRate = 0;
  SavingAccount({double balance = 0, double interestRate = 0})
      : _interestRate = interestRate,
        super(balance: balance);

  double get interestRate => _interestRate;
  void set interestRate(double value) {
    if (value > 0) {
      _interestRate = value;
    }
  }

  void addInterest() {
    double interest = _balance * _interestRate;
    this._balance += interest;
  }

  @override
  String toString() {
    return super.toString() + 'The interest rate is ${interestRate}';
  }
}
