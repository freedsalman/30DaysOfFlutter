import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("catalog app"),
      ),
      body: Center(
        child: Container(
          child: Text('flutter app'),
        ),
      ),
    );
  }
}
