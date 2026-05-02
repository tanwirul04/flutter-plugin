class BankAccount {
  double _balance;

  BankAccount(this._balance);

  double get balance => _balance;

  void deposit(double amount) {
    _balance += amount;
    print("Deposit berhasil Rp. $amount, saldo baru anda $_balance");
  }
}

void main(){
  var tanwi123 = BankAccount(20000000);

  print("saldo awal = ${tanwi123.balance}");

  tanwi123.deposit(20000);

  print("saldo sekarang = ${tanwi123.balance}");
}