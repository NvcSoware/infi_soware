// api_service.dart
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:infi_soware/constants.dart';

import 'dart:convert';

import '../model/login_response.dart';

class ApiService {
  Future<CompanyElement> login(String username, String password) async {
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
      log(CompanyElement.fromJson(data).user.userName.toString());

      return CompanyElement.fromJson(data);
    } else {
      throw Exception('Login failed');
    }
  }
}
