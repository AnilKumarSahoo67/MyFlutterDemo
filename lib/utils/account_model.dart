class Accounts {
  late final String accountNumber;
  late final String currentBalance;

  Accounts({required this.accountNumber, required this.currentBalance});

  Accounts.fromJson(Map<String, dynamic> json) {
    accountNumber = json['accountNumber'];
    currentBalance = json['currentBalance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accountNumber'] = accountNumber;
    data['currentBalance'] = currentBalance;
    return data;
  }
}

class AccountModel{
  static var accounts = [
    Accounts(accountNumber: "2141 **** **** 2731", currentBalance: "129,000"),
    Accounts(accountNumber: "2141 **** **** 2731", currentBalance: "100,030"),
    Accounts(accountNumber: "2141 **** **** 2731", currentBalance: "130,110"),
  ];
}