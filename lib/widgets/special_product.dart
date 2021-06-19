import 'package:flutter/material.dart';
import 'package:new_app/main.dart';

import 'product.dart';

class SpecialProduct extends Product {
  SpecialProduct(String title, int price, String image)
      : super(title, price, image);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            color: secondaryBackgroundGrey,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 24),
              Image.asset('assets/$image', width: 80, height: 80),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(color: backgroundWhite, fontSize: 16)),
                  Text('\$ $price',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
                color: backgroundWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(16),
                )),
            child: Center(
                child: Text('+',
                    style: TextStyle(
                      color: backgroundGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ))),
            width: 32,
            height: 32,
          ),
        )
      ],
    );
  }
}
