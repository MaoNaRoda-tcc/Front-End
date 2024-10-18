import 'package:app_mao_na_roda/AddPublish.dart';
import 'package:app_mao_na_roda/features/events/pages/eventDetails.dart';
import 'package:app_mao_na_roda/features/garage/pages/addCar.dart';
import 'package:app_mao_na_roda/features/garage/pages/addCarOnGarage.dart';
import 'package:app_mao_na_roda/features/events/pages/addEvent.dart';
import 'package:app_mao_na_roda/app_controller.dart';
import 'package:app_mao_na_roda/features/garage/pages/carDetails.dart';
import 'package:app_mao_na_roda/features/events/pages/events.dart';
import 'package:app_mao_na_roda/features/garage/pages/garagem.dart';
import 'package:app_mao_na_roda/features/home/pages/home_page.dart';
import 'package:app_mao_na_roda/features/login/pages/login_page.dart';
import 'package:app_mao_na_roda/features/login/pages/new_account.dart';
import 'package:app_mao_na_roda/features/parts/pages/parts.dart';
import 'package:app_mao_na_roda/features/profile/pages/profile.dart';
import 'package:app_mao_na_roda/splash_screen.dart';
import 'package:flutter/material.dart';
// import 'package:app_mao_na_roda/car_model_dropdown.dart';

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
            '/login': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/addPubli': (context) => AddPublish(),
            '/eventos': (context) => Eventos(),
            '/addPubliEvento': (context) => AddPublishEvento(),
            '/pecas': (context) => Pecas(),
            '/addPeca': (context) => AddPublishCarro(),
            '/EventDetails': (context) => EventDetails(),
            '/perfil': (context) => Perfil(),
            '/garagem': (context) => garagem(),
            '/cardetails': (context) => carDetails(),
            '/addCar': (context) => addCar(),
            '/Cadastro': (context) => NewAccount(),
          },
        );
      },
      animation: AppController.instance,
    );
  }
}
