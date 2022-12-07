import 'package:flutter/material.dart';
import 'package:my_first_portfolio/ForgotPassword.dart';
import 'package:my_first_portfolio/HomePage.dart';
import 'package:my_first_portfolio/ProductTour3.dart';
import 'package:my_first_portfolio/Register.dart';
import 'package:my_first_portfolio/TermCondition.dart';

class RegisterVerify extends StatefulWidget {
  final String email;

  const RegisterVerify({Key? key, required this.email}) : super(key: key);

  @override
  State<RegisterVerify> createState() => _RegisterVerifyState();
}

class _RegisterVerifyState extends State<RegisterVerify> {
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
            width: 250,
            height: 70,
            margin: EdgeInsets.only(left: 20, top: 50),
            child: Text(
              "Verify your Identify",
              style: TextStyle(
                color: Color(0xff194B38),
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              height: 40,
              width: 340,
              child: Text(
                "We have just sent a code to $widget.email",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xff9C9C9C),
                  letterSpacing: .5,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Color(0xffF1F4F3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                margin: EdgeInsets.only(left: 45, top: 25),
                child: Center(child: Text("1", style: TextStyle(color: Colors.grey, fontSize: 30, fontWeight: FontWeight.w800),)),

              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Color(0xffF1F4F3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                margin: EdgeInsets.only(left: 15, top: 25),
                child: Center(child: Text("6", style: TextStyle(color: Colors.grey, fontSize: 30, fontWeight: FontWeight.w800),)),

              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Color(0xffF1F4F3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                margin: EdgeInsets.only(left: 15, top: 25),
                child: Center(child: Text("1", style: TextStyle(color: Colors.grey, fontSize: 30, fontWeight: FontWeight.w800),)),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Color(0xffF1F4F3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(child: Text("3", style: TextStyle(color: Colors.grey, fontSize: 30, fontWeight: FontWeight.w800),)),
                margin: EdgeInsets.only(left: 15, top: 25),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 75),
                  child: Text(
                    "Didn’t receive the code?",
                    style: TextStyle(
                        fontSize: 14, color: Colors.grey, letterSpacing: .5),
                  )),
               Padding(
                    padding: EdgeInsets.only(left: 6),
                    child: Text(
                      "Resend code",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff4CBB5E),
                          letterSpacing: .5),
                    )),
            ],
          ),
          InkWell(
            onTap: () {
              if (email.text.isNotEmpty && password.text.isNotEmpty) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ForgotPassword()));
              } else if (email.text.isEmpty && password.text.isEmpty) {
                isEmailEmpty = true;
                isPasswordEmpty = true;
                setState(() {});
              } else if (email.text.isEmpty) {
                isEmailEmpty = true;
                setState(() {});
              } else if (password.text.isEmpty) {
                isPasswordEmpty = true;
                setState(() {});
              }
            },
            child: InkWell(
              onTap: (){
                showModalBottomSheet(context: context, builder: (context){
                  return Container(
                    height: 450,
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset("assets/Check.png"),
                          margin: EdgeInsets.only(top: 30),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          child: Text("Success!", style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff4B4B4B),
                          ),),
                        ),
                        SizedBox(height: 14,),
                        Container(
                          child: Text("You have successfully created your account.", textAlign: TextAlign.center ,style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff9C9C9C),
                            height: 1.6
                          ),),
                          height: 43,
                          width: 234,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomePage()));
                          }
                          ,child: Container(
                            height: 70,
                            width: 400,
                            decoration: BoxDecoration(
                                color: Color(0xff324A59),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                gradient: LinearGradient(
                                    colors: [Color(0xff32CB4B), Color(0xff26AD71)],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            margin: EdgeInsets.only(left: 25, right: 25, top: 50),
                            child: Center(
                                child: Text(
                                  "Browse home",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  );
                });
              },
              child: Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                    color: Color(0xff324A59),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                        colors: [Color(0xff32CB4B), Color(0xff26AD71)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                margin: EdgeInsets.only(left: 25, right: 25, top: 50),
                child: Center(
                    child: Text(
                  "Vertification",
                  style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17,
                color: Colors.white,
                  ),
                )),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
              child: Text(
            "By Signin up, you agree to our",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xff9C9C9C)),
          )),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => TermCondition()));
            },
            child: Padding(
                padding: EdgeInsets.only(left: 6),
                child: Center(
                  child: Text(
                    "Term and Conditions",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff4CBB5E),
                        letterSpacing: .5),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
