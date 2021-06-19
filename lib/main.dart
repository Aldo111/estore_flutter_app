import 'package:flutter/material.dart';
import 'package:new_app/widgets/bottom_panel.dart';
import 'package:new_app/widgets/headphone_banner.dart';
import 'package:new_app/widgets/product.dart';
import 'package:new_app/widgets/product_filters.dart';
import 'package:new_app/widgets/products_title.dart';

const backgroundGrey = Color(0xFF252525);
const secondaryBackgroundGrey = Color(0xFF3d3d3d);
const lightBackgroundGrey = Color(0xFFF1F2F7);
const backgroundWhite = Color(0xFFFDFDFD);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          iconTheme: IconThemeData(color: backgroundGrey, size: 36)),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: backgroundWhite,
              elevation: 0,
              leading: Icon(Icons.grid_3x3, color: backgroundGrey, size: 36),
              actions: [
                IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.search,
                      size: 36,
                      color: backgroundGrey,
                    )),
                IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.local_pizza,
                      size: 36,
                      color: backgroundGrey,
                    ))
              ],
            ),
            body: Stack(
              children: [
                Container(
                  color: backgroundGrey,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: backgroundWhite,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(75))),
                  child: Column(
                    children: [
                      HeadphoneBanner(),
                      SizedBox(height: 20),
                      ProductsTitle(),
                      SizedBox(height: 10),
                      ProductFilters(),
                      SizedBox(height: 30),
                      Products(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 200.0,
          child: Stack(
            children: [
              Container(
                color: backgroundWhite,
              ),
              Container(
                decoration: BoxDecoration(
                    color: backgroundGrey,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(75))),
                child: BottomPanel(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
