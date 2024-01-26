import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:test4/custom_textfeild.dart';
import 'package:test4/login.dart';
import 'package:test4/put.dart';
import 'package:test4/signup.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: page(),
      debugShowCheckedModeBanner: false,
    );
  }
}



class page extends StatelessWidget {
  GlobalKey<FormState> keyform = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Login();
  }
}
