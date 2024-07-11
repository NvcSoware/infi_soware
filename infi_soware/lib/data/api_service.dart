// api_service.dart
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:infi_soware/constants.dart';

import 'dart:convert';

import '../model/login_response.dart';

class ApiService {
  Future<CompanyElement> login(String username, String password) async {
    //  Map<String, dynamic>? userInfo;
    // String name = userInfo!['name'] as String? ?? '';

    final response = await http.post(
      Uri.parse(baseUrl + loginUrl),
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
}
