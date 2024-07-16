class AreaLookup {
  int areaNumber;
  int customerNumber;
  String? areaCode;
  String areaName;
  int areaStatus;
  dynamic areaRemarks;

  AreaLookup({
    required this.areaNumber,
    required this.customerNumber,
    required this.areaCode,
    required this.areaName,
    required this.areaStatus,
    required this.areaRemarks,
  });

  factory AreaLookup.fromJson(Map<String, dynamic> json) => AreaLookup(
        areaNumber: json["AreaNumber"],
        customerNumber: json["CustomerNumber"],
        areaCode: json["AreaCode"],
        areaName: json["AreaName"],
        areaStatus: json["AreaStatus"],
        areaRemarks: json["AreaRemarks"],
      );

  Map<String, dynamic> toJson() => {
        "AreaNumber": areaNumber,
        "CustomerNumber": customerNumber,
        "AreaCode": areaCode,
        "AreaName": areaName,
        "AreaStatus": areaStatus,
        "AreaRemarks": areaRemarks,
      };
}
