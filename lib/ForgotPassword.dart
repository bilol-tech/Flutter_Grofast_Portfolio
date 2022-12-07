import 'package:flutter/material.dart';
import 'package:my_first_portfolio/ForgotPassword.dart';
import 'package:my_first_portfolio/NewPassword.dart';
import 'package:my_first_portfolio/ProductTour3.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isPasswordVisible = false;
  bool isEmailEmpty = false;
  bool isPasswordEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(top: 60, left: 20),
              height: 40,
              width: 60,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff777777)),
                  borderRadius: BorderRadius.circular(100)),
              child: Container(
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Color(0xff777777),
                ),
              ),
            ),
          ),
          Container(
            width: 200,
            height: 70,
            margin: EdgeInsets.only(left: 20, top: 50),
            child: Text(
              "Forgot Password",
              style: TextStyle(
                color: Color(0xff194B38),
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Container(
            width: 350,
            height: 50,
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "Please enter your number. We will send a code to your phone to reset your password.",
              style: TextStyle(
                color: Color(0xff9C9C9C),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1.5
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Email address",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xff9C9C9C),
                letterSpacing: .5,
              ),
            ),
          ),
          Container(
            width: 400,
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: email,
                onChanged: (a) {
                  isEmailEmpty = false;
                  setState(() {});
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff194B38).withOpacity(0.1),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(17))),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                      borderSide: BorderSide(
                          color: Color(0xff194B38).withOpacity(0.0),
                          width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(17)),
                      borderSide: BorderSide(
                          color: Color(0xff194B38).withOpacity(0.0),
                          width: 2.0),
                    ),
                    prefixIcon: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Icon(Icons.email_outlined),
                    )),
              ),
            ),
          ),
          isEmailEmpty
              ? Padding(
            padding: EdgeInsets.only(left: 40, top: 2),
            child: Text(
              "Email address is requirment",
              style: TextStyle(color: Colors.red),
            ),
          )
              : SizedBox.shrink(),

          InkWell(
            onTap: () {
              if (email.text.isNotEmpty) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => NewPassword()));
              } else if (email.text.isEmpty) {
                isEmailEmpty = true;
                setState(() {});
              }
            },
            child: Container(
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                  color: Color(0xff324A59),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(colors: [Color(0xff32CB4B), Color(0xff26AD71)],begin: Alignment.topCenter, end: Alignment.bottomCenter)
              ),
              margin: EdgeInsets.only(
                  left: 25, right: 25, top: 50
              ),
              child: Container(
                child: Container(child: Center(child: Text("Send me Link",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17, color: Colors.white,
                ),))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
