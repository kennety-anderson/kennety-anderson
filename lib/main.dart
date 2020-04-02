import 'package:flutter/material.dart';
import 'package:apptest/pages/Register/signIn.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My mind',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xFFf7497d)),
      initialRoute: '/signIn',
      // home: Login(),
      routes: {'/signIn': (context) => SignIn()},
    );
  }
}
