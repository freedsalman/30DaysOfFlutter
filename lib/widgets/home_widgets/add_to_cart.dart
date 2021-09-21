import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key key,
    this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.listen(context, to: [AddMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog) ?? false;
    return RaisedButton(
        color: Colors.black87,
        child: Row(
          children: [
            isInCart ? Icon(Icons.done) : "Add to cart".text.make(),
            Text(
              "",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        onPressed: () {
          if (!isInCart) {
            AddMutation(catalog);
          }
        });
  }
}
