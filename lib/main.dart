import 'package:flutter/material.dart';
import 'package:my_first_portfolio/CategoryExpandedHorizontal.dart';
import 'package:my_first_portfolio/CategoryExpandedVertical.dart';
import 'package:my_first_portfolio/DiscountPage.dart';
import 'package:my_first_portfolio/HomePage.dart';
import 'package:my_first_portfolio/ProductTour1.dart';
import 'package:my_first_portfolio/ProductTour3.dart';


void main() {
  runApp(const MainFile());
}

class MainFile extends StatelessWidget {
  const MainFile({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
}
