import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test4/custom_textfeild.dart';
import 'package:http/http.dart' as http;
import 'package:test4/signup.dart';

class Login extends StatelessWidget {
  GlobalKey<FormState> keyform = GlobalKey();
  TextEditingController T_email = TextEditingController();
  TextEditingController T_password = TextEditingController();

  void Signup(String email, String password) async {
    try {
      var response = await http.post(Uri.parse("https://reqres.in/api/login"),
          body: {"email": email, "password": password});
      print(response.statusCode);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print("login Succes");
      } else {
        print("Falid Response");
        print(response.statusCode);
      }
    } catch (erorr) {
      print("The problem is .... : ${erorr.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: keyform,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 45),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: TextFormField(
                  controller: T_email,
                  validator: (x) {
                    if (x!.isEmpty) {
                      return "empty";
                    }
                  },
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(),
                    hoverColor: Colors.green,
                    hintText: "email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(width: 3, color: Colors.black)),
                  ),
                ),
              ),
            ),
            Custom_Textfeild(
                controller: T_password,
                validate: (data) {
                  if (data.isEmpty) {
                    return "no password";
                  }
                },
                hint: "password",
                backgroundcolor: Colors.white,
                hovercolor: Colors.green,
                bordercolor: Colors.black,
                hintstyle: TextStyle(),
                borderwidth: 5,
                borderradius: 25),
            ElevatedButton(
                onPressed: () async {
                  if (keyform.currentState!.validate()) {
                    Signup(T_email.text.toString(), T_password.text.toString());
                  }
                },
                child: Text("Login")),
            GestureDetector(
              onTap: ()=>Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) =>SignUp()))
  ,
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: Colors.green,
                  child: Text(
                    "Create account",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
