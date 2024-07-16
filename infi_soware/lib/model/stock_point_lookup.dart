class StockpointLookup {
  int stockPointNumber;
  String? stockPointCode;
  String stockPointName;
  int stockPointStatus;
  dynamic stockPointRemarks;

  StockpointLookup({
    required this.stockPointNumber,
    required this.stockPointCode,
    required this.stockPointName,
    required this.stockPointStatus,
    required this.stockPointRemarks,
  });

  factory StockpointLookup.fromJson(Map<String, dynamic> json) =>
      StockpointLookup(
        stockPointNumber: json["StockPointNumber"],
        stockPointCode: json["StockPointCode"],
        stockPointName: json["StockPointName"],
        stockPointStatus: json["StockPointStatus"],
        stockPointRemarks: json["StockPointRemarks"],
      );

  Map<String, dynamic> toJson() => {
        "StockPointNumber": stockPointNumber,
        "StockPointCode": stockPointCode,
        "StockPointName": stockPointName,
        "StockPointStatus": stockPointStatus,
        "StockPointRemarks": stockPointRemarks,
      };
}
