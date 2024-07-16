class Salesman {
  int accHeadNumber;
  String? accHeadCode;
  String? accHeadName;

  Salesman({
    required this.accHeadNumber,
    required this.accHeadCode,
    required this.accHeadName,
  });

  factory Salesman.fromJson(Map<String, dynamic> json) => Salesman(
        accHeadNumber: json["AccHeadNumber"],
        accHeadCode: json["AccHeadCode"],
        accHeadName: json["AccHeadName"],
      );

  Map<String, dynamic> toJson() => {
        "AccHeadNumber": accHeadNumber,
        "AccHeadCode": accHeadCode,
        "AccHeadName": accHeadName,
      };
}
