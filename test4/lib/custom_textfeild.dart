import 'package:flutter/material.dart';

class Custom_Textfeild extends StatelessWidget {
  String hint;
  Color backgroundcolor;
  Color hovercolor;
  Color bordercolor;
  TextStyle hintstyle;
  double borderwidth;
  var validate;
  var controller;

  Custom_Textfeild(
      {required this.controller,
      required this.validate,
      required this.hint,
      required this.backgroundcolor,
      required this.hovercolor,
      required this.bordercolor,
      required this.hintstyle,
      required this.borderwidth,
      required this.borderradius});

  double borderradius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderradius),
            color: backgroundcolor),
        child: TextFormField(
          controller: controller,
          validator: validate,
          decoration: InputDecoration(
            hintStyle: hintstyle,
            hoverColor: hovercolor,
            hintText: hint,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderradius),
                borderSide: BorderSide(width: borderwidth, color: bordercolor)),
          ),
        ),
      ),
    );
  }
}
