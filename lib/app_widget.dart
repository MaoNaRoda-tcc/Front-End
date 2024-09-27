import 'package:app_mao_na_roda/app_controller.dart';
import 'package:app_mao_na_roda/home_page.dart';
import 'package:app_mao_na_roda/login_page.dart';
import 'package:app_mao_na_roda/new_account.dart';
import 'package:app_mao_na_roda/splash_screen.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => SplashScreen(),
            '/home': (context) => HomePage(),
            '/login': (context) => LoginPage(),
            '/Cadastro': (context) => NewAccount(),
          },
        );
      },
      animation: AppController.instance,
    );
  }
}
