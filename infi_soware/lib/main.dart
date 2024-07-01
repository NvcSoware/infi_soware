import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infi_soware/bloc/login/login_bloc.dart';
import 'package:infi_soware/data/api_service.dart';
import 'routes.dart';
import 'style/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(BlocProvider(
    create: (context) => LoginBloc(ApiService()),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      routes: Routes.getRoutes(),
      initialRoute: Routes.login,
    );
  }
}
