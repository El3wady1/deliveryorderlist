import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool ispressed =true;

  double w =100;

  double h =100;

  Color c1 =Colors.green;

  Color c2 =Colors.red;

  Widget iconplay =Icon(Icons.play_circle,size: 40,color: Colors.white,);

  Widget start =Text("Start",style: TextStyle(fontSize: 35,color: Colors.white),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              setState(() {
                ispressed ? w=270:w=100;
                ispressed=!ispressed;
              });
            },
            child: AnimatedContainer(
              child: ispressed?iconplay:Center(child: start),
              // Use the properties stored in the State class.
              width: w,
              height: h,
              decoration: BoxDecoration(
                color: ispressed ? c1:c2,
                borderRadius: BorderRadius.circular(80),
              ),
              // Define how long the animation should take.
              duration: const Duration(milliseconds:1600),
              // Provide an optional curve to make the animation feel smoother.
              curve: Curves.ease,
            ),
          )      ],)),
    );
  }
}
