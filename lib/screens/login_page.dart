import 'package:flutter/material.dart';
import 'package:flutter_catalog/utilis/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedbutton = false;

  final _formKey = GlobalKey<FormState>();

  movetoHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changedbutton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changedbutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("assets/images/login_image.png"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $name",
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
                        validator: (value) {
                          if (value.isEmpty) return "please enter username";
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "enter password", labelText: "Password"),
                        validator: (value) {
                          if (value.isEmpty)
                            return "please enter password";
                          else if (value.length < 6) {
                            return "password length would be atleast 6";
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changedbutton ? 20 : 8),
                        child: InkWell(
                          onTap: () => movetoHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changedbutton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changedbutton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                          ),
                        ),
                      )

                      // FlatButton(
                      //   child:
                      //       Text("Login", style: TextStyle(color: Colors.white)),
                      //   color: Colors.blue,
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
