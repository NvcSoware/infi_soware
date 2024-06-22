import 'package:flutter/material.dart';
import 'package:infi_soware/ui/screen/home_screen.dart';
import 'package:infi_soware/ui/screen/login_screen.dart';
import 'routes.dart';
import 'style/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      routes: Routes.getRoutes(),
      initialRoute: Routes.login,
    );
  }
}
