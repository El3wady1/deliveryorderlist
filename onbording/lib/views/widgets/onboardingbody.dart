import 'package:flutter/material.dart';
import 'package:onbording/views/onboard1.dart';
import 'package:onbording/views/onboard2.dart';
import 'package:onbording/views/onboard3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingBodyView extends StatefulWidget {
  @override
  State<OnboardingBodyView> createState() => _OnboardingBodyViewState();
}

class _OnboardingBodyViewState extends State<OnboardingBodyView> {
  PageController _controllerpage = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controllerpage,
          children: [
            OnboardingPage1(),
            OnboardingPage2(),
            OnboardingPage3(),
          ],
        ),
        Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 2,
                ),
                GestureDetector(
                  child: Text("Skip"),
                  onTap: () {
                    //0,1,2
                    _controllerpage.jumpToPage(3);
                  },
                ),
                Spacer(
                  flex: 1,
                ),
                SmoothPageIndicator(controller: _controllerpage, count: 3),
                Spacer(
                  flex: 1,
                ),
                GestureDetector(
                  child: Text("Next"),
                  onTap: () {
                    _controllerpage.nextPage(duration: Duration(milliseconds: 600), curve: Curves.easeIn);
                  },
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ))
      ]),
    );
  }
}
