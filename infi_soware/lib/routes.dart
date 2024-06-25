import 'package:flutter/material.dart';
import 'package:infi_soware/ui/screen/home_screen.dart';
import 'package:infi_soware/ui/screen/login_screen.dart';

class Routes {
  static const String login = '/';
  static const String home = '/home';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      login: (context) => LoginScreen(),
      home: (context) => HomeScreen(
            username: '',
            password: '',
          )
    };
  }
}
