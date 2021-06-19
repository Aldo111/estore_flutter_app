import 'package:flutter/material.dart';
import 'package:new_app/main.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24),
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Product('Controller B25', 280, 'controller.png'),
          Product('Headphone X11', 600, 'headphones2.png'),
        ],
      ),
    );
  }
}

class Product extends StatelessWidget {
  final String title;
  final int price;
  final String image;

  Product(this.title, this.price, this.image);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 160,
          height: 200,
          decoration: BoxDecoration(
            color: lightBackgroundGrey,
            borderRadius: BorderRadius.circular(32),
          ),
          margin: EdgeInsets.only(right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/$image', width: 120, height: 120),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  Text('\$ $price',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        ),
        Positioned(
          right: 16,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
                color: backgroundGrey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(32),
                )),
            child: Center(
                child: Text('+',
                    style: TextStyle(
                      color: backgroundWhite,
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
