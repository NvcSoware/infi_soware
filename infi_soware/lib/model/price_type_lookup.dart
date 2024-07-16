class PriceTypeLookup {
  int priceTypeNumber;
  String priceTypeCode;
  String priceTypeName;

  PriceTypeLookup({
    required this.priceTypeNumber,
    required this.priceTypeCode,
    required this.priceTypeName,
  });

  factory PriceTypeLookup.fromJson(Map<String, dynamic> json) =>
      PriceTypeLookup(
        priceTypeNumber: json["PriceTypeNumber"],
        priceTypeCode: json["PriceTypeCode"],
        priceTypeName: json["PriceTypeName"],
      );

  Map<String, dynamic> toJson() => {
        "PriceTypeNumber": priceTypeNumber,
        "PriceTypeCode": priceTypeCode,
        "PriceTypeName": priceTypeName,
      };
}
