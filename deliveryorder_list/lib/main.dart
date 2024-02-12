import 'package:animated/widget/listtile.dart';
import 'package:flutter/material.dart';

void main() => runApp(OrderAPP());

class OrderAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page(),
    );
  }
}

class Page extends StatefulWidget {
  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  int inc = 1;
  int inc1 = 1, inc2 = 2, inc3 = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  "assets/pi.png",
                ),
              ),
              Listtile(
                islast: false,
                isfirst: true,
                text: 'Order 1:  Cake',
                isfinish: inc1 == 1 ? true : false,
              ),
              Listtile(
                islast: false,
                isfirst: false,
                text: 'Order 2:  Bread',
                isfinish: inc2 == 1 ? true : false,
              ),
              Listtile(
                islast: true,
                isfirst: false,
                text: 'Order 3:  Meat',
                isfinish: inc3 == 1 ? true : false,
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    splashColor: Colors.white,
                    color: Colors.yellow.shade900,
                    child: Text(
                      "Done !",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        inc++;
                        if (inc == 1) {
                          inc1 = 1;
                        } else if (inc == 2) {
                          inc1 = 1;
                          inc2 = 1;
                        } else if (inc == 3) {
                          inc1 = 1;
                          inc2 = 1;
                          inc3 = 1;
                        } else if (inc == 4) {
                          inc = 0;
                          inc1 = 0;
                          inc2 = 0;
                          inc3 = 0;
                        }
                        print(inc);
                      });
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
