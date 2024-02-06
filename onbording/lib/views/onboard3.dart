import 'package:flutter/material.dart';

class OnboardingPage3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/3.jpg"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
                  "Let's go ..... ",
                  style: TextStyle(
                      fontSize: 30, color: Colors.green, fontWeight: FontWeight.w900),

                )),
          ),
        ],
      ),
    );
  }
}
