// To parse this JSON data, do
//
//     final companyElement = companyElementFromJson(jsonString);

import 'dart:convert';

List<CompanyElement> companyElementFromJson(String str) =>
    List<CompanyElement>.from(
        json.decode(str).map((x) => CompanyElement.fromJson(x)));

String companyElementToJson(List<CompanyElement> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CompanyElement {
  // int companyNumber;
  // int comLocationNumber;
  // int companyTypeNumber;
  // String companyCode;
  String? companyName;
  // String locationName;
  // int currencyNumber;
  // DateTime openingStockDate;
  // DateTime openingStockDateString;
  // int rowStatus;
  // String companyRegNo1;
  // String companyRegNo2;
  // String companyRegNo3;
  // String companyTinNum;
  // String companyCstNum;
  // String companyAddress;
  // String companyPlace;
  // String companyPost;
  // String companyDistrict;
  // String companyPhone;
  // String companyEMail;
  // String companyWebSite;
  // String companyRemarks;
  // String gstNumber;
  // String panNumber;
  // String stateName;
  // int stateNumber;
  // dynamic companyLogo;
  // dynamic companyLogoSrc;

  CompanyElement({
    // required this.companyNumber,
    // required this.comLocationNumber,
    // required this.companyTypeNumber,
    // required this.companyCode,
    required this.companyName,
    // required this.locationName,
    // required this.currencyNumber,
    // required this.openingStockDate,
    // required this.openingStockDateString,
    // required this.rowStatus,
    // required this.companyRegNo1,
    // required this.companyRegNo2,
    // required this.companyRegNo3,
    // required this.companyTinNum,
    // required this.companyCstNum,
    // required this.companyAddress,
    // required this.companyPlace,
    // required this.companyPost,
    // required this.companyDistrict,
    // required this.companyPhone,
    // required this.companyEMail,
    // required this.companyWebSite,
    // required this.companyRemarks,
    // required this.gstNumber,
    // required this.panNumber,
    // required this.stateName,
    // required this.stateNumber,
    // required this.companyLogo,
    // required this.companyLogoSrc,
  });

  factory CompanyElement.fromJson(Map<String, dynamic> json) => CompanyElement(
        // companyNumber: json["CompanyNumber"],
        // comLocationNumber: json["ComLocationNumber"],
        // companyTypeNumber: json["CompanyTypeNumber"],
        // companyCode: json["CompanyCode"],
        companyName: json["CompanyName"],
        // locationName: json["LocationName"],
        // currencyNumber: json["CurrencyNumber"],
        // openingStockDate: DateTime.parse(json["OpeningStockDate"]),
        // openingStockDateString: DateTime.parse(json["OpeningStockDateString"]),
        // rowStatus: json["RowStatus"],
        // companyRegNo1: json["CompanyRegNo1"],
        // companyRegNo2: json["CompanyRegNo2"],
        // companyRegNo3: json["CompanyRegNo3"],
        // companyTinNum: json["CompanyTINNum"],
        // companyCstNum: json["CompanyCSTNum"],
        // companyAddress: json["CompanyAddress"],
        // companyPlace: json["CompanyPlace"],
        // companyPost: json["CompanyPost"],
        // companyDistrict: json["CompanyDistrict"],
        // companyPhone: json["CompanyPhone"],
        // companyEMail: json["CompanyEMail"],
        // companyWebSite: json["CompanyWebSite"],
        // companyRemarks: json["CompanyRemarks"],
        // gstNumber: json["GSTNumber"],
        // panNumber: json["PANNumber"],
        // stateName: json["StateName"],
        // stateNumber: json["StateNumber"],
        // companyLogo: json["CompanyLogo"],
        // companyLogoSrc: json["CompanyLogoSRC"],
      );

  Map<String, dynamic> toJson() => {
        // "CompanyNumber": companyNumber,
        // "ComLocationNumber": comLocationNumber,
        // "CompanyTypeNumber": companyTypeNumber,
        // "CompanyCode": companyCode,
        "CompanyName": companyName,
        // "LocationName": locationName,
        // "CurrencyNumber": currencyNumber,
        // "OpeningStockDate": openingStockDate.toIso8601String(),
        // "OpeningStockDateString": openingStockDateString.toIso8601String(),
        // "RowStatus": rowStatus,
        // "CompanyRegNo1": companyRegNo1,
        // "CompanyRegNo2": companyRegNo2,
        // "CompanyRegNo3": companyRegNo3,
        // "CompanyTINNum": companyTinNum,
        // "CompanyCSTNum": companyCstNum,
        // "CompanyAddress": companyAddress,
        // "CompanyPlace": companyPlace,
        // "CompanyPost": companyPost,
        // "CompanyDistrict": companyDistrict,
        // "CompanyPhone": companyPhone,
        // "CompanyEMail": companyEMail,
        // "CompanyWebSite": companyWebSite,
        // "CompanyRemarks": companyRemarks,
        // "GSTNumber": gstNumber,
        // "PANNumber": panNumber,
        // "StateName": stateName,
        // "StateNumber": stateNumber,
        // "CompanyLogo": companyLogo,
        // "CompanyLogoSRC": companyLogoSrc,
      };
}
