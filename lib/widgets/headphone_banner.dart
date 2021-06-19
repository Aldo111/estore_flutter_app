import 'package:flutter/material.dart';
import 'package:new_app/main.dart';

class HeadphoneBanner extends StatelessWidget {
  const HeadphoneBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Stack(children: [
        Container(
          height: 140,
          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
          decoration: BoxDecoration(
            color: backgroundGrey,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Container(
          child: Row(
            children: [
              Image.asset(
                'assets/headphones.png',
                height: 180,
              ),
              SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: secondaryBackgroundGrey,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Text(
                      'New Product',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Headphone X1',
                    style: TextStyle(
                        color: backgroundWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                        primary: Colors.orangeAccent,
                        minimumSize: Size(5, 5)),
                    child: Text(
                      'Buy Now',
                      style: TextStyle(color: backgroundWhite),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
