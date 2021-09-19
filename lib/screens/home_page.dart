import 'package:flutter/material.dart';
import 'package:flutter_catalog/utilis/routes.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("catalog app"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text('flutter app'),
            ),
            FlatButton(
              child: Text("Login", style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
            )
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
