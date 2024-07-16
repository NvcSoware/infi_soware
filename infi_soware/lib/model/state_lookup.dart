class StateLookup {
  int stateNumber;
  String stateCode;
  String stateName;
  int tinTwoDigit;

  StateLookup({
    required this.stateNumber,
    required this.stateCode,
    required this.stateName,
    required this.tinTwoDigit,
  });

  factory StateLookup.fromJson(Map<String, dynamic> json) => StateLookup(
        stateNumber: json["StateNumber"],
        stateCode: json["StateCode"],
        stateName: json["StateName"],
        tinTwoDigit: json["TINTwoDigit"],
      );

  Map<String, dynamic> toJson() => {
        "StateNumber": stateNumber,
        "StateCode": stateCode,
        "StateName": stateName,
        "TINTwoDigit": tinTwoDigit,
      };
}
