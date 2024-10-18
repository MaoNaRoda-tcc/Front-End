// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_mao_na_roda/features/login/autentication/autenticacao.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../shared/components/login_textfield.dart';
import 'package:flutter/services.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  get onChanged => null;

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  String email = "";
  String cpf = "";
  String nome = "";
  String senha = "";
  String confirmSenha = "";

  Autenticacao _autenticacao = Autenticacao();

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
                            'Cadastre-se',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                                fontSize: 35),
                          ),
                          Text(
                            'Crie uma conta para acessar os conteúdos',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                                fontSize: 18),
                          )
                        ]),
                    SizedBox(
                      height: 20,
                    ),
                    LoginTextfield(
                      labelText: 'E-mail',
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          cpf = value;
                          if (widget.onChanged != null) {
                            widget.onChanged!(cpf);
                          }
                        });
                      },
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 0.8))),
                        labelText: 'Cpf',
                        filled: true,
                        fillColor: Color.fromRGBO(0, 0, 0, 1),
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.8)),
                      ),
                      style:
                          TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          nome = value;
                          if (widget.onChanged != null) {
                            widget.onChanged!(nome);
                          }
                        });
                      },
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(255, 255, 255, 0.8))),
                        labelText: 'Nome',
                        filled: true,
                        fillColor: Color.fromRGBO(0, 0, 0, 1),
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.8)),
                      ),
                      style:
                          TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LoginTextfield(
                      labelText: 'Senha',
                      isObscured: true,
                      onChanged: (value) {
                        senha = value;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LoginTextfield(
                      labelText: 'Confirmação de senha',
                      isObscured: true,
                      onChanged: (value) {
                        confirmSenha = value;
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
                          if (senha == confirmSenha &&
                              cpf != "" &&
                              nome != "" &&
                              senha != "" &&
                              confirmSenha != "") {
                            _autenticacao.registerUser(
                                nome: nome, senha: senha, email: email);
                            Navigator.of(context)
                                .pushReplacementNamed('/login');
                          } else {
                            print("algo deu errado!");
                          }
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
                      // if (senha == '1234' && email == 'oka@gmail.com.br') {
                      //     Navigator.of(context).pushReplacementNamed('/home');
                      // }
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
}
