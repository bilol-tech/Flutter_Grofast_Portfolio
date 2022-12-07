import 'package:flutter/material.dart';
import 'package:my_first_portfolio/ForgotPassword.dart';
import 'package:my_first_portfolio/LoginPage.dart';
import 'package:my_first_portfolio/ProductTour3.dart';
import 'package:my_first_portfolio/RegisterVerify.dart';

class Register extends StatefulWidget {
  final String email;
  const Register({Key? key, required this.email}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool isPasswordVisible = false;
  bool isEmailEmpty = false;
  bool isPasswordEmpty = false;
  bool isNameEmpty = false;

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
            width: 300,
            height: 70,
            margin: EdgeInsets.only(left: 20, top: 50),
            child: Text(
              "Welcome to Grofast!",
              style: TextStyle(
                color: Color(0xff194B38),
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Full name",
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
                keyboardType: TextInputType.text,
                controller: name,
                onChanged: (a) {
                  isNameEmpty = false;
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
                      child: Icon(Icons.person_outline_outlined),
                    )),
              ),
            ),
          ),
          isNameEmpty
              ? Padding(
            padding: EdgeInsets.only(left: 40, top: 0),
            child: Text(
              "Name is Required!",
              style: TextStyle(color: Colors.red),
            ),
          )
              : SizedBox.shrink(),

          SizedBox(height: 10,),
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
            padding: EdgeInsets.only(left: 40, top: 0),
            child: Text(
              "Email address is requirment",
              style: TextStyle(color: Colors.red),
            ),
          )
              : SizedBox.shrink(),


          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Password",
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
                controller: password,
                onChanged: (s) {
                  isPasswordEmpty = false;
                  setState(() {});
                },
                obscureText: isPasswordVisible,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    suffixIcon: Container(
                      margin: EdgeInsets.only(right: 7),
                      child: IconButton(
                        icon: Icon(
                          isPasswordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Color(0xff5B5B5B),
                        ),
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                      ),
                    ),
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
                      child: Icon(Icons.lock_outlined),
                    )),
              ),
            ),
          ),
          isPasswordEmpty
              ? Padding(
            padding: EdgeInsets.only(left: 40, top: 2),
            child: Text(
              "Password is requirment",
              style: TextStyle(color: Colors.red),
            ),
          )
              : SizedBox.shrink(),

          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ForgotPassword()));
            },
            child: Padding(
              padding: EdgeInsets.only(left: 305, bottom: 0),
              child: Text(
                "Forgot password?",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xff9C9C9C)),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (name.text.isNotEmpty && email.text.isNotEmpty && password.text.isNotEmpty) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => RegisterVerify(email: widget.email,)));
              } else if (name.text.isEmpty && email.text.isEmpty && password.text.isEmpty) {
                isNameEmpty = true;
                isEmailEmpty = true;
                isPasswordEmpty = true;
                setState(() {});
              } else if (email.text.isEmpty) {
                isNameEmpty = true;
                setState(() {});
              } else if (email.text.isEmpty) {
                isEmailEmpty = true;
                setState(() {});
              } else if (password.text.isEmpty) {
                isPasswordEmpty = true;
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
                  left: 25, right: 25, top: 30
              ),
              child: Container(
                child: Container(child: Center(child: Text("Sign up",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17, color: Colors.white,
                ),))),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
                "or with",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xff4B4B4B)),
              )),
          Row(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Color(0xffF1F4F3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Icon(
                  Icons.apple,
                  size: 30,
                ),
                margin: EdgeInsets.only(left: 45, top: 25),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Color(0xffF1F4F3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Image.asset("assets/google.png"),
                margin: EdgeInsets.only(left: 15, top: 25),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Color(0xffF1F4F3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Image.asset("assets/skype.png"),
                margin: EdgeInsets.only(left: 15, top: 25),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Color(0xffF1F4F3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Image.asset("assets/facebook.png"),
                margin: EdgeInsets.only(left: 15, top: 25),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(
                        fontSize: 14, color: Colors.grey, letterSpacing: .5),
                  )),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LoginPage()));
                },
                child: Padding(
                    padding: EdgeInsets.only(left: 6),
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff4CBB5E),
                          letterSpacing: .5),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
