import 'dart:core';
import 'package:firebase_auth/firebase_auth.dart';


class Autenticacao{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  registerUser({
    required String nome,
    required String senha,
    required String email,
  }) async {
    UserCredential userCredential = 
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email, 
      password: senha,
      );

    await userCredential.user!.updateDisplayName(nome);
  }
}