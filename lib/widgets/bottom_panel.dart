import 'package:flutter/material.dart';
import 'package:new_app/main.dart';

import 'special_product.dart';

class BottomPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 48, top: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Special for you',
                  style: TextStyle(
                      color: backgroundWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            SpecialProduct('Controller B25', 280, 'controller.png'),
          ],
        ),
      ),
    );
  }
}
