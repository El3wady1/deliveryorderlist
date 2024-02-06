import 'package:flutter/material.dart';

class OnboardingPage2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/2.jpg"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
                  "Mapping.... 2 ",
                  style: TextStyle(
                      fontSize: 30, color: Colors.green, fontWeight: FontWeight.w900),

                )),
          ),
          Center(
              child: Text(
                "this app is about ............ ",
                style: TextStyle(
                    fontSize: 25, color: Colors.grey, fontWeight: FontWeight.w900),

              )),
        ],
      ),
    );
  }
}
