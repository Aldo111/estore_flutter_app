import 'package:flutter/material.dart';
import 'package:new_app/main.dart';

class ProductFilters extends StatefulWidget {
  @override
  _ProductFiltersState createState() => _ProductFiltersState();
}

class _ProductFiltersState extends State<ProductFilters> {
  static const _filters = <String>[
    'All Products',
    'Recommended',
    'New Product',
    'Popular'
  ];

  String _selectedFilter = 'All Products';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24),
      height: 20,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        ..._filters.map((filterText) => Padding(
              padding: const EdgeInsets.only(right: 16),
              child: TextButton(
                onPressed: () => setState(() => _selectedFilter = filterText),
                style: TextButton.styleFrom(
                    backgroundColor: _selectedFilter == filterText
                        ? Colors.redAccent
                        : Colors.transparent,
                    side: _selectedFilter != filterText
                        ? BorderSide(color: Colors.grey.shade300)
                        : null,
                    padding: EdgeInsets.all(4),
                    primary: Colors.red,
                    minimumSize: Size(100, 2)),
                child: Text(
                  filterText,
                  style: TextStyle(
                      color: _selectedFilter == filterText
                          ? backgroundWhite
                          : Colors.grey,
                      fontSize: 12),
                ),
              ),
            ))
      ]),
    );
  }
}
