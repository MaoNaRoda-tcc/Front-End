import 'package:flutter/material.dart';
import 'app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'features/login/autentication/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(AppWidget());
}
