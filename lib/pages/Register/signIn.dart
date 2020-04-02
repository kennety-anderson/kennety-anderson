import 'package:flutter/material.dart';
import 'package:apptest/widgets/Input/Input.dart';

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
      backgroundColor: Colors.deepPurple,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: 250,
              child: InputText(
                labelText: 'Email',
                keyBordType: TextInputType.emailAddress,
                onChange: _setEmail,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: 250,
              child: InputText(
                labelText: 'Senha',
                obscureText: true,
                onChange: _setPassword,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
