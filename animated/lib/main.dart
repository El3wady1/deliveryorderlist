import 'package:animated/views/home.dart';
import 'package:flutter/material.dart';
void main()=>runApp(App());
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page(),
    );
  }
}

class Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Home();
  }
}
