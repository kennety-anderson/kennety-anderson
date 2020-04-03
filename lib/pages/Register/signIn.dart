import 'package:flutter/material.dart';
import 'package:apptest/widgets/Input/InputForm.dart';
import 'package:apptest/widgets/ButtonForm/ButtonForm.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String _email = '';
  String _password = '';

  void _setEmail(String text) {
    setState(() {
      _email = text;
    });
  }

  void _setPassword(String text) {
    setState(() {
      _password = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [const Color(0xFFb9046e), const Color(0xFF570388)],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: 300,
              child: InputForm(
                labelText: 'Email',
                keyBordType: TextInputType.emailAddress,
                onChange: _setEmail,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: 300,
              child: InputForm(
                labelText: 'Senha',
                obscureText: true,
                onChange: _setPassword,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 50.0,
              child: ButtonForm(
                text: 'Entrar',
              ),
            )
          ],
        ),
      ),
    );
  }
}
