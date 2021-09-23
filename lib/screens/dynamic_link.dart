import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DynamicLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Container(
              child: new InkWell(
                  child: new Text('Open Browser'),
                  onTap: () => launch(
                      'https://fluttercatalog.page.link/catalog')),
            ),
          )
        ],
      ),
    );
  }
}
