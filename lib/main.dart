import 'package:eqait_test/pages/signin.dart';
import 'package:flutter/material.dart';
import 'package:eqait_test/pages/homepage.dart';
void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }

}