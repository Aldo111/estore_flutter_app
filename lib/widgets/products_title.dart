import 'package:flutter/material.dart';

class ProductsTitle extends StatelessWidget {
  const ProductsTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Our Products',
            style: Theme.of(context).textTheme.headline6,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_list)),
        ],
      ),
    );
  }
}
