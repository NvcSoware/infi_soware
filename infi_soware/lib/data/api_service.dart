// api_service.dart
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:infi_soware/constants.dart';
import 'package:infi_soware/data/data_base_helper.dart';

import 'dart:convert';

import '../model/login_response.dart';
import '../model/sales.dart';

class ApiService {
  final DatabaseHelper _databaseHelper = DatabaseHelper();

  Future<CompanyElement> login(String username, String password,
      {String? name}) async {
    //  Map<String, dynamic>? userInfo;
    // String name = userInfo!['name'] as String? ?? '';
    String? nameUrl = await _databaseHelper.getNameUrl();
    if (nameUrl == null) {
      throw Exception('Name Url Not found in database');
    }
    String url = nameUrl + loginUrl;
    if (name != null && name.isNotEmpty) {
      url += name;
    }

    final response = await http.post(
      Uri.parse(url),
      body: json.encode({
        'UserName': username,
        'UserPassword': password,
      }),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      log(response.body);
      final data = json.decode(response.body);
      if (CompanyElement.fromJson(data).user.userNumber != 0) {
        return CompanyElement.fromJson(data);
      } else {
        throw Exception('Invalid username or password');
      }
    } else {
      throw Exception('Login failed');
    }
  }

  Future<Map<String, dynamic>> postUserData(
      {required int companyNumber,
      required int yearNumber,
      required int userNumber}) async {
    final response = await http.post(Uri.parse(baseUrl + getSettings),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'CompanyNUmber': companyNumber,
          'YearNumber': yearNumber,
          'UserNumber': userNumber
        }));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to post user data');
    }
  }
}
