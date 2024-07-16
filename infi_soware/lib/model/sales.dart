// To parse this JSON data, do
//
//     final sales = salesFromJson(jsonString);

import 'dart:convert';

import 'account_type_lookup.dart';
import 'area_lookup.dart';
import 'price_type_lookup.dart';
import 'sales_man.dart';
import 'series_lookup.dart';
import 'state_lookup.dart';
import 'stock_point_lookup.dart';
import 'trans_detail_server.dart';
import 'trans_head_server.dart';

Sales salesFromJson(String str) => Sales.fromJson(json.decode(str));

String salesToJson(Sales data) => json.encode(data.toJson());

class Sales {
  List<SeriesLookup> seriesLookup;
  List<PriceTypeLookup> priceTypeLookup;
  List<StateLookup> stateLookup;
  List<AccountTypeLookup> accountTypeLookup;
  TransHeadServer transHeadServer;
  TransDetailServer transDetailServer;
  List<AreaLookup> areaLookup;
  List<StockpointLookup> stockpointLookup;
  List<Salesman> salesmanLookup;
  Salesman salesman;

  Sales({
    required this.seriesLookup,
    required this.priceTypeLookup,
    required this.stateLookup,
    required this.accountTypeLookup,
    required this.transHeadServer,
    required this.transDetailServer,
    required this.areaLookup,
    required this.stockpointLookup,
    required this.salesmanLookup,
    required this.salesman,
  });

  factory Sales.fromJson(Map<String, dynamic> json) => Sales(
        seriesLookup: List<SeriesLookup>.from(
            json["SeriesLookup"].map((x) => SeriesLookup.fromJson(x))),
        priceTypeLookup: List<PriceTypeLookup>.from(
            json["PriceTypeLookup"].map((x) => PriceTypeLookup.fromJson(x))),
        stateLookup: List<StateLookup>.from(
            json["StateLookup"].map((x) => StateLookup.fromJson(x))),
        accountTypeLookup: List<AccountTypeLookup>.from(
            json["AccountTypeLookup"]
                .map((x) => AccountTypeLookup.fromJson(x))),
        transHeadServer: TransHeadServer.fromJson(json["TransHeadServer"]),
        transDetailServer:
            TransDetailServer.fromJson(json["TransDetailServer"]),
        areaLookup: List<AreaLookup>.from(
            json["AreaLookup"].map((x) => AreaLookup.fromJson(x))),
        stockpointLookup: List<StockpointLookup>.from(
            json["StockpointLookup"].map((x) => StockpointLookup.fromJson(x))),
        salesmanLookup: List<Salesman>.from(
            json["SalesmanLookup"].map((x) => Salesman.fromJson(x))),
        salesman: Salesman.fromJson(json["Salesman"]),
      );

  Map<String, dynamic> toJson() => {
        "SeriesLookup": List<dynamic>.from(seriesLookup.map((x) => x.toJson())),
        "PriceTypeLookup":
            List<dynamic>.from(priceTypeLookup.map((x) => x.toJson())),
        "StateLookup": List<dynamic>.from(stateLookup.map((x) => x.toJson())),
        "AccountTypeLookup":
            List<dynamic>.from(accountTypeLookup.map((x) => x.toJson())),
        "TransHeadServer": transHeadServer.toJson(),
        "TransDetailServer": transDetailServer.toJson(),
        "AreaLookup": List<dynamic>.from(areaLookup.map((x) => x.toJson())),
        "StockpointLookup":
            List<dynamic>.from(stockpointLookup.map((x) => x.toJson())),
        "SalesmanLookup":
            List<dynamic>.from(salesmanLookup.map((x) => x.toJson())),
        "Salesman": salesman.toJson(),
      };
}
