import 'package:flutter/material.dart';
import 'package:onbording/views/onboardingview.dart';

void main() => runApp(OnboardApp());

class OnboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Page(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return OnboardingView();
  }
}
