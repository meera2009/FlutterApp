import 'package:flutter/material.dart';
import 'package:login/ui/login_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'TheLogin',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LoginPage(),
    );
  }
}