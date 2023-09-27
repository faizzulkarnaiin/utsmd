// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:uts_flutter/cart_screen.dart';
import 'package:uts_flutter/detail_product.dart';
import 'package:uts_flutter/homepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       home:HomePage(),
      
    );
  }
}