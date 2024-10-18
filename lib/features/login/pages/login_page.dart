// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../shared/components/login_textfield.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  String email = "";
  String senha = "";

  @override
  void initState() {
    super.initState();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/golzin.png"),
              fit: BoxFit.cover,
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Container(
                //   width: 200,
                //   height: 200,
                //   child: Image.network(
                //       'https://files.fm/thumb_show.php?i=yhsvu7k63s'),
                // ),
                SizedBox(
                  height: 1,
                ),
                Container(
                  width: 180,
                  height: 180,
                  child: Image.asset('assets/images/logo.png'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                          ),
                          Text(
                            'Login',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                                fontSize: 35),
                          ),
                          Text(
                            'Entre no APP por meio da sua conta',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                                fontSize: 18),
                          )
                        ]),
                    SizedBox(
                      height: 30,
                    ),
                    LoginTextfield(
                      labelText: 'E-mail',
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    LoginTextfield(
                      labelText: 'Senha',
                      isObscured: true,
                      onChanged: (value) {
                        senha = value;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(MediaQuery.of(context).size.width, 55.0),
                          ),
                          shape:
                              MaterialStateProperty.resolveWith<OutlinedBorder>(
                            (Set<MaterialState> states) {
                              return RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              );
                            },
                          ),
                        ),
                        onPressed: () {
                          logarUser(email: email, senha: senha)
                              .then((String? erro) {
                            if (erro != null) {
                              print(erro);
                            } else {
                              Navigator.of(context)
                                  .pushReplacementNamed('/home');
                            }
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Continuar',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                              size: 30.0,
                              weight: 800,
                            )
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  height: 1,
                ),
                // SizedBox(height: 75),
                ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(MediaQuery.of(context).size.width, 55.0),
                      ),
                      shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                        (Set<MaterialState> states) {
                          return RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: BorderSide(color: Colors.white));
                        },
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          return Colors.black;
                        },
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/Cadastro');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Não tem uma conta? Cadastre-se',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.email,
                          color: Colors.white,
                          size: 30.0,
                          weight: 800,
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<String?> logarUser(
      {required String email, required String senha}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: senha);
      return null;
    } on FirebaseException catch (e) {
      return e.message;
    }
  }
}
