import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Listtile extends StatelessWidget {
  bool islast, isfirst;
  String text;
  bool isfinish = false;

  Listtile(
      {required this.text,
      required this.islast,
      required this.isfirst,
      required this.isfinish
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: TimelineTile(
        isLast: islast,
        endChild: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color:
                    isfinish ? Colors.yellow.shade900 : Colors.yellow.shade100,
                borderRadius: BorderRadius.circular(20)),
            width: double.infinity,
            height: 90,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        isFirst: isfirst,
        beforeLineStyle: LineStyle(
            color: isfinish ? Colors.yellow.shade900 : Colors.yellow.shade100,
            thickness: 7),
        indicatorStyle: IndicatorStyle(
            padding: EdgeInsets.all(.1),
            indicator: Container(
              decoration: BoxDecoration(
                  color: isfinish
                      ? Colors.yellow.shade900
                      : Colors.yellow.shade100,
                  borderRadius: BorderRadius.circular(50)),
              child: isfinish
                  ? Icon(
                      Icons.check_circle_outline_rounded,
                      size: 30,
                      color: Colors.white,
                    )
                  : Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircularProgressIndicator(
                        color: Colors.amber.shade900,
                      ),
                    ),
            ),
            color: Colors.white,
            width: 45,
            height: 45),
      ),
    );
  }
}
