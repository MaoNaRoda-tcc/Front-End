import 'package:flutter/material.dart';

class LoginTextfield extends StatefulWidget {
  final String labelText;
  final ValueChanged<String>? onChanged;
  final bool isObscured;

  const LoginTextfield(
      {Key? key,
      required this.labelText,
      this.onChanged,
      this.isObscured = false})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginTextfieldState();
  }
}

class LoginTextfieldState extends State<LoginTextfield> {
  String valor = '';

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        setState(() {
          valor = value;
          if (widget.onChanged != null) {
            widget.onChanged!(valor);
          }
        });
      },
      obscureText: widget.isObscured,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 0.8))),
        labelText: widget.labelText,
        filled: true,
        fillColor: Color.fromRGBO(0, 0, 0, 1),
        labelStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8)),
      ),
      style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.8)),
    );
  }
}
