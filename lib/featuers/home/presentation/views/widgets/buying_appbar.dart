import 'package:flutter/material.dart';

class BuyingAppbar extends StatelessWidget {
  const BuyingAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        alignment: Alignment.centerRight,
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_checkout_sharp,
              color: Colors.white,
            )));
  }
}
