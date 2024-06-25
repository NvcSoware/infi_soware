// api_service.dart
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:infi_soware/constants.dart';
import 'package:infi_soware/model/company_element.dart';

import 'dart:convert';

import '../model/login_response.dart';

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
      final data = json.decode(response.body);
      if (data is List) {
        return data.map((json) => CompanyElement.fromJson(json)).toList();
      } else {
        throw Exception('Unexpected data format : ${data.runtimeType}');
      }

      // final list = jsonList.cast<CompanyElement>();
      // return LoginResponse.fromJson(jsonList);
      //final List<CompanyElement> list = [];
      // for (var item in jsonList) {
      //   if (item is Map<String, dynamic>) {
      //     list.add(CompanyElement.fromJson(item));
      //   }
      // }
      // log(jsonList.toString());
      // int userN = jsonList[0]['UserNumber'];

      // log('userNo : $userN');
    } else {
      throw Exception('Login failed');
    }
  }
}
