import 'package:flutter/material.dart';
import 'package:my_first_portfolio/ForgotPassword.dart';
import 'package:my_first_portfolio/LoginPage.dart';
import 'package:my_first_portfolio/NewPassword.dart';
import 'package:my_first_portfolio/ProductTour1.dart';
import 'package:my_first_portfolio/ProductTour2.dart';
import 'package:my_first_portfolio/ProductTour3.dart';
import 'package:my_first_portfolio/Register.dart';
import 'package:my_first_portfolio/RegisterVerify.dart';
import 'package:my_first_portfolio/TermCondition.dart';
import 'package:my_first_portfolio/welcomePage.dart';

void main() {
  runApp(const MainFile());
}

class MainFile extends StatelessWidget {
  const MainFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:WelcomePage(),
    );
  }
}
