class SeriesLookup {
  int seriesNumber;
  int seriesTypeNumber;
  String seriesTypeName;
  String seriesName;
  bool gstEnabled;
  bool avoidScheme;
  int gstCategory;

  SeriesLookup({
    required this.seriesNumber,
    required this.seriesTypeNumber,
    required this.seriesTypeName,
    required this.seriesName,
    required this.gstEnabled,
    required this.avoidScheme,
    required this.gstCategory,
  });

  factory SeriesLookup.fromJson(Map<String, dynamic> json) => SeriesLookup(
        seriesNumber: json["SeriesNumber"],
        seriesTypeNumber: json["SeriesTypeNumber"],
        seriesTypeName: json["SeriesTypeName"],
        seriesName: json["SeriesName"],
        gstEnabled: json["GSTEnabled"],
        avoidScheme: json["AvoidScheme"],
        gstCategory: json["GSTCategory"],
      );

  Map<String, dynamic> toJson() => {
        "SeriesNumber": seriesNumber,
        "SeriesTypeNumber": seriesTypeNumber,
        "SeriesTypeName": seriesTypeName,
        "SeriesName": seriesName,
        "GSTEnabled": gstEnabled,
        "AvoidScheme": avoidScheme,
        "GSTCategory": gstCategory,
      };
}
