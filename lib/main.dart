import 'package:appmenia/screen/Bill.dart';
import 'package:appmenia/screen/Cart.dart';
import 'package:appmenia/screen/Homepage.dart';
import 'package:appmenia/screen/details.dart';
import 'package:appmenia/screen/fav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => homePage(),
        'product_detailPage': (context) => detailPage(),
        'cart_page': (context) => cartPage(),
        'favorite_page': (context) => favoritePage(),
        'bill': (context) => bill(),
      },
    ),
  );
}
