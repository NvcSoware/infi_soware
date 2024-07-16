class AccountTypeLookup {
  int accountTypeNumber;
  String accountTypeName;
  int accHeadNumber;

  AccountTypeLookup({
    required this.accountTypeNumber,
    required this.accountTypeName,
    required this.accHeadNumber,
  });

  factory AccountTypeLookup.fromJson(Map<String, dynamic> json) =>
      AccountTypeLookup(
        accountTypeNumber: json["AccountTypeNumber"],
        accountTypeName: json["AccountTypeName"],
        accHeadNumber: json["AccHeadNumber"],
      );

  Map<String, dynamic> toJson() => {
        "AccountTypeNumber": accountTypeNumber,
        "AccountTypeName": accountTypeName,
        "AccHeadNumber": accHeadNumber,
      };
}
