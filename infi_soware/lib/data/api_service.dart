// api_service.dart
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:infi_soware/constants.dart';
import 'dart:convert';
import '../model/company_element.dart';

class ApiService {
  Future<List<CompanyElement>> login(String username, String password) async {
    final response = await http.post(
      Uri.parse(baseUrl + loginUrl),
      body: json.encode({
        'UserName': username,
        'UserPassword': password,
      }),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      log(jsonList.toString());
      int userN = jsonList[0]['UserNumber'];
      log('userNo : $userN');
      if (userN >= 1) {
        return jsonList.map((json) => CompanyElement.fromJson(json)).toList();
      } else {
        throw Exception('UserName or Password is incorrect');
      }
    } else {
      throw Exception('Login failed');
    }
  }
}
