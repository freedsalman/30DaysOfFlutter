import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_catalog/screens/navigation_context.dart';
import 'package:flutter_catalog/utilis/routes.dart';
//import 'package:flutter_catalog/screens/cart_page.dart';

class DynamicLinkHelper {
  static retrieveDynamicLink(BuildContext context) {
    try {
      FirebaseDynamicLinks.instance.onLink(
          onSuccess: (PendingDynamicLinkData dynamicLink) async {
        if (dynamicLink.link != null) {
          print(dynamicLink.link);
          print("---");
          BuildContext contextTemp =
              NavigationService.navigatorKey.currentContext;

          Navigator.pushNamed(contextTemp, MyRoutes.loginRoute);
          //    Navigator() => CartPage;
        }
      });
    } catch (e) {
      print("exception");
      print(e);
    }
  }
}
