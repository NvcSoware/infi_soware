// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

class LoginResponse {
  int? userNumber;
  int? userLevelNumber;
  String? userName;
  String? userPassword;
  String? encryptionKey;
  int? userLevelHierarchyOrder;
  dynamic errorDetails;
  bool? loadLookup;
  dynamic lookupList;
  dynamic errorPropertyName;
  int? noOfRecords;
  int? currentPage;
  int? recordFrom;
  int? recordTo;
  int? totalRecords;
  dynamic records;
  String? errorMessage;
  int? yearNumber;
  DateTime? yearDateStart;
  DateTime? yearDateStartString;
  DateTime? yearDateStop;
  DateTime? yearDateStopString;
  String? year;
  int? yearLocked;
  String? yearRemarks;
  bool? isChequeForward;

  LoginResponse({
    this.userNumber,
    this.userLevelNumber,
    this.userName,
    this.userPassword,
    this.encryptionKey,
    this.userLevelHierarchyOrder,
    this.errorDetails,
    this.loadLookup,
    this.lookupList,
    this.errorPropertyName,
    this.noOfRecords,
    this.currentPage,
    this.recordFrom,
    this.recordTo,
    this.totalRecords,
    this.records,
    this.errorMessage,
    this.yearNumber,
    this.yearDateStart,
    this.yearDateStartString,
    this.yearDateStop,
    this.yearDateStopString,
    this.year,
    this.yearLocked,
    this.yearRemarks,
    this.isChequeForward,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        userNumber: json["UserNumber"],
        userLevelNumber: json["UserLevelNumber"],
        userName: json["UserName"],
        userPassword: json["UserPassword"],
        encryptionKey: json["EncryptionKey"],
        userLevelHierarchyOrder: json["UserLevelHierarchyOrder"],
        errorDetails: json["ErrorDetails"],
        loadLookup: json["LoadLookup"],
        lookupList: json["LookupList"],
        errorPropertyName: json["ErrorPropertyName"],
        noOfRecords: json["NoOfRecords"],
        currentPage: json["CurrentPage"],
        recordFrom: json["RecordFrom"],
        recordTo: json["RecordTo"],
        totalRecords: json["TotalRecords"],
        records: json["Records"],
        errorMessage: json["ErrorMessage"],
        yearNumber: json["YearNumber"],
        yearDateStart: json["YearDateStart"] == null
            ? null
            : DateTime.parse(json["YearDateStart"]),
        yearDateStartString: json["YearDateStartString"] == null
            ? null
            : DateTime.parse(json["YearDateStartString"]),
        yearDateStop: json["YearDateStop"] == null
            ? null
            : DateTime.parse(json["YearDateStop"]),
        yearDateStopString: json["YearDateStopString"] == null
            ? null
            : DateTime.parse(json["YearDateStopString"]),
        year: json["Year"],
        yearLocked: json["YearLocked"],
        yearRemarks: json["YearRemarks"],
        isChequeForward: json["ISChequeForward"],
      );

  Map<String, dynamic> toJson() => {
        "UserNumber": userNumber,
        "UserLevelNumber": userLevelNumber,
        "UserName": userName,
        "UserPassword": userPassword,
        "EncryptionKey": encryptionKey,
        "UserLevelHierarchyOrder": userLevelHierarchyOrder,
        "ErrorDetails": errorDetails,
        "LoadLookup": loadLookup,
        "LookupList": lookupList,
        "ErrorPropertyName": errorPropertyName,
        "NoOfRecords": noOfRecords,
        "CurrentPage": currentPage,
        "RecordFrom": recordFrom,
        "RecordTo": recordTo,
        "TotalRecords": totalRecords,
        "Records": records,
        "ErrorMessage": errorMessage,
        "YearNumber": yearNumber,
        "YearDateStart": yearDateStart?.toIso8601String(),
        "YearDateStartString": yearDateStartString?.toIso8601String(),
        "YearDateStop": yearDateStop?.toIso8601String(),
        "YearDateStopString": yearDateStopString?.toIso8601String(),
        "Year": year,
        "YearLocked": yearLocked,
        "YearRemarks": yearRemarks,
        "ISChequeForward": isChequeForward,
      };
}
