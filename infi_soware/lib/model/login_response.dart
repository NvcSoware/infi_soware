class CompanyElement {
  User user;
  List<CompanyList> companyList;
  FinYear finYear;
  dynamic currency;

  CompanyElement({
    required this.user,
    required this.companyList,
    required this.finYear,
    required this.currency,
  });

  factory CompanyElement.fromJson(Map<String, dynamic> json) => CompanyElement(
        user: User.fromJson(json["User"]),
        companyList: List<CompanyList>.from(
            json["CompanyList"].map((x) => CompanyList.fromJson(x))),
        finYear: FinYear.fromJson(json["FinYear"]),
        currency: json["Currency"],
      );

  Map<String, dynamic> toJson() => {
        "User": user.toJson(),
        "CompanyList": List<dynamic>.from(companyList.map((x) => x.toJson())),
        "FinYear": finYear.toJson(),
        "Currency": currency,
      };
}

class CompanyList {
  int companyNumber;
  int comLocationNumber;
  int companyTypeNumber;
  String companyCode;
  String companyName;
  String locationName;
  int currencyNumber;
  DateTime openingStockDate;
  DateTime openingStockDateString;
  int rowStatus;
  String companyRegNo1;
  String companyRegNo2;
  String companyRegNo3;
  String companyTinNum;
  String companyCstNum;
  String companyAddress;
  String companyPlace;
  String companyPost;
  String companyDistrict;
  String companyPhone;
  String companyEMail;
  String companyWebSite;
  String companyRemarks;
  String gstNumber;
  String panNumber;
  String stateName;
  int stateNumber;
  dynamic companyLogo;
  dynamic companyLogoSrc;

  CompanyList({
    required this.companyNumber,
    required this.comLocationNumber,
    required this.companyTypeNumber,
    required this.companyCode,
    required this.companyName,
    required this.locationName,
    required this.currencyNumber,
    required this.openingStockDate,
    required this.openingStockDateString,
    required this.rowStatus,
    required this.companyRegNo1,
    required this.companyRegNo2,
    required this.companyRegNo3,
    required this.companyTinNum,
    required this.companyCstNum,
    required this.companyAddress,
    required this.companyPlace,
    required this.companyPost,
    required this.companyDistrict,
    required this.companyPhone,
    required this.companyEMail,
    required this.companyWebSite,
    required this.companyRemarks,
    required this.gstNumber,
    required this.panNumber,
    required this.stateName,
    required this.stateNumber,
    required this.companyLogo,
    required this.companyLogoSrc,
  });

  factory CompanyList.fromJson(Map<String, dynamic> json) => CompanyList(
        companyNumber: json["CompanyNumber"],
        comLocationNumber: json["ComLocationNumber"],
        companyTypeNumber: json["CompanyTypeNumber"],
        companyCode: json["CompanyCode"],
        companyName: json["CompanyName"],
        locationName: json["LocationName"],
        currencyNumber: json["CurrencyNumber"],
        openingStockDate: DateTime.parse(json["OpeningStockDate"]),
        openingStockDateString: DateTime.parse(json["OpeningStockDateString"]),
        rowStatus: json["RowStatus"],
        companyRegNo1: json["CompanyRegNo1"],
        companyRegNo2: json["CompanyRegNo2"],
        companyRegNo3: json["CompanyRegNo3"],
        companyTinNum: json["CompanyTINNum"],
        companyCstNum: json["CompanyCSTNum"],
        companyAddress: json["CompanyAddress"],
        companyPlace: json["CompanyPlace"],
        companyPost: json["CompanyPost"],
        companyDistrict: json["CompanyDistrict"],
        companyPhone: json["CompanyPhone"],
        companyEMail: json["CompanyEMail"],
        companyWebSite: json["CompanyWebSite"],
        companyRemarks: json["CompanyRemarks"],
        gstNumber: json["GSTNumber"],
        panNumber: json["PANNumber"],
        stateName: json["StateName"],
        stateNumber: json["StateNumber"],
        companyLogo: json["CompanyLogo"],
        companyLogoSrc: json["CompanyLogoSRC"],
      );

  Map<String, dynamic> toJson() => {
        "CompanyNumber": companyNumber,
        "ComLocationNumber": comLocationNumber,
        "CompanyTypeNumber": companyTypeNumber,
        "CompanyCode": companyCode,
        "CompanyName": companyName,
        "LocationName": locationName,
        "CurrencyNumber": currencyNumber,
        "OpeningStockDate": openingStockDate.toIso8601String(),
        "OpeningStockDateString": openingStockDateString.toIso8601String(),
        "RowStatus": rowStatus,
        "CompanyRegNo1": companyRegNo1,
        "CompanyRegNo2": companyRegNo2,
        "CompanyRegNo3": companyRegNo3,
        "CompanyTINNum": companyTinNum,
        "CompanyCSTNum": companyCstNum,
        "CompanyAddress": companyAddress,
        "CompanyPlace": companyPlace,
        "CompanyPost": companyPost,
        "CompanyDistrict": companyDistrict,
        "CompanyPhone": companyPhone,
        "CompanyEMail": companyEMail,
        "CompanyWebSite": companyWebSite,
        "CompanyRemarks": companyRemarks,
        "GSTNumber": gstNumber,
        "PANNumber": panNumber,
        "StateName": stateName,
        "StateNumber": stateNumber,
        "CompanyLogo": companyLogo,
        "CompanyLogoSRC": companyLogoSrc,
      };
}

class FinYear {
  int yearNumber;
  DateTime yearDateStart;
  DateTime yearDateStartString;
  DateTime yearDateStop;
  DateTime yearDateStopString;
  String year;
  int yearLocked;
  String yearRemarks;
  bool isChequeForward;

  FinYear({
    required this.yearNumber,
    required this.yearDateStart,
    required this.yearDateStartString,
    required this.yearDateStop,
    required this.yearDateStopString,
    required this.year,
    required this.yearLocked,
    required this.yearRemarks,
    required this.isChequeForward,
  });

  factory FinYear.fromJson(Map<String, dynamic> json) => FinYear(
        yearNumber: json["YearNumber"],
        yearDateStart: DateTime.parse(json["YearDateStart"]),
        yearDateStartString: DateTime.parse(json["YearDateStartString"]),
        yearDateStop: DateTime.parse(json["YearDateStop"]),
        yearDateStopString: DateTime.parse(json["YearDateStopString"]),
        year: json["Year"],
        yearLocked: json["YearLocked"],
        yearRemarks: json["YearRemarks"],
        isChequeForward: json["ISChequeForward"],
      );

  Map<String, dynamic> toJson() => {
        "YearNumber": yearNumber,
        "YearDateStart": yearDateStart.toIso8601String(),
        "YearDateStartString": yearDateStartString.toIso8601String(),
        "YearDateStop": yearDateStop.toIso8601String(),
        "YearDateStopString": yearDateStopString.toIso8601String(),
        "Year": year,
        "YearLocked": yearLocked,
        "YearRemarks": yearRemarks,
        "ISChequeForward": isChequeForward,
      };
}

class User {
  int userNumber;
  int userLevelNumber;
  String userName;
  String userPassword;
  String encryptionKey;
  int userLevelHierarchyOrder;
  dynamic errorDetails;
  bool loadLookup;
  dynamic lookupList;
  dynamic errorPropertyName;
  int noOfRecords;
  int currentPage;
  int recordFrom;
  int recordTo;
  int totalRecords;
  dynamic records;
  String errorMessage;

  User({
    required this.userNumber,
    required this.userLevelNumber,
    required this.userName,
    required this.userPassword,
    required this.encryptionKey,
    required this.userLevelHierarchyOrder,
    required this.errorDetails,
    required this.loadLookup,
    required this.lookupList,
    required this.errorPropertyName,
    required this.noOfRecords,
    required this.currentPage,
    required this.recordFrom,
    required this.recordTo,
    required this.totalRecords,
    required this.records,
    required this.errorMessage,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
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
      };
}
