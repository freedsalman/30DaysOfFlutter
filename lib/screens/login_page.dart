import 'package:flutter/material.dart';
import 'package:flutter_catalog/utilis/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login_image.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "enter username", labelText: "UserName"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "enter password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      child:
                          Text("Login", style: TextStyle(color: Colors.white)),
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
