import 'package:flutter/material.dart';

class BuyingDetails extends StatelessWidget {
  const BuyingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
          height: 50,
          width: 150,
          child: Text(
            '19.19 Dollrs',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          height: 50,
          width: 150,
          child: Text(
            'Free preview',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ],
    );
  }
}
