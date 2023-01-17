import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_portfolio/MainHomePage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>MainHomePage()));
                }, child: Container(
                width: 80,
                height: 50,
                margin: EdgeInsets.only(left: 20, top: 60),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    border: Border.all(color: Color(0xff777777).withOpacity(0.2))
                ),
                child: Icon(Icons.arrow_back, color: Color(0xff777777),),
              ),
              ),
              Container(
                margin: EdgeInsets.only(top: 80, left: 100),
                child: Text("Profile", style: GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff4B4B4B)),),
              ),
              Container(
                child: Image.asset("assets/bag.png"),
                margin: EdgeInsets.only(top: 75, left: 140),
              ),
            ],
          ),
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(top: 55),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              color: Color(0xffC4C4C4),
              image: DecorationImage(image: AssetImage("assets/myself_zoom.jpg"), fit: BoxFit.cover)
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 11), child: Text("Bilol Abdunazarov", style: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 18, color: Color(0xff4B4B4B)),)),
          Padding(padding: EdgeInsets.only(top: 7), child: Text("bilolabdunazarov8480@gmail.com", style: GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 12, color: Color(0xff4B4B4B)),)),
          Row(
            children: [
              Container(
                height: 105,
                width: 110,
                margin: EdgeInsets.only(left: 30, top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(23)),
                  color: Color(0xffF1F3F2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25,),
                    Center(child: Icon(Icons.notifications, color: Color(0xff3B87E0),)),
                    SizedBox(height: 8,),
                    Center(child: Text("Notification", style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 12, color: Color(0xff777777)),))
                  ],
                ),
              ),
              Container(
                height: 105,
                width: 110,
                margin: EdgeInsets.only(left: 25, top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(23)),
                  color: Color(0xffF1F3F2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25,),
                    Center(child: Icon(Icons.card_giftcard, color: Color(0xff26AD71),)),
                    SizedBox(height: 8,),
                    Center(child: Text("Voucher", style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 12, color: Color(0xff777777)),))
                  ],
                ),
              ),
              Container(
                height: 105,
                width: 110,
                margin: EdgeInsets.only(left: 25, top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(23)),
                  color: Color(0xffF1F3F2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25,),
                    Center(child: Icon(Icons.favorite, color: Color(0xffEC534A),)),
                    SizedBox(height: 8,),
                    Center(child: Text("Wishlist", style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 12, color: Color(0xff777777)),))
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 20, top: 30),
            width: 420,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(23)),
              color: Color(0xffF1F3F2),
            ),
            child: Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20),child: Icon(Icons.person, color: Color(0xff26AD71), size: 30,)),
                Padding(padding: EdgeInsets.only(left: 25),child: Container(width: 120,child: Text("My profile", style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 13, color: Color(0xff777777)),))),
                Padding(padding: EdgeInsets.only(left: 150),child: Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xff777777),)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 20, top: 20),
            width: 420,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(23)),
              color: Color(0xffF1F3F2),
            ),
            child: Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20),child: Icon(Icons.settings, color: Color(0xff26AD71), size: 30,)),
                Padding(padding: EdgeInsets.only(left: 25),child: Container(width: 120,child: Text("Notification Setting", style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 13, color: Color(0xff777777)),))),
                Padding(padding: EdgeInsets.only(left: 150),child: Icon(Icons.arrow_forward_ios, size: 15, color: Color(0xff777777),)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 20, top: 20),
            width: 420,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(23)),
              color: Color(0xffF1F3F2),
            ),
            child: Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20),child: Icon(Icons.logout_outlined, color: Color(0xffEC534A), size: 30,)),
                Padding(padding: EdgeInsets.only(left: 25),child: Container(width: 120,child: Text("Log Out", style: GoogleFonts.raleway(fontWeight: FontWeight.w500, fontSize: 13, color: Color(0xff777777)),))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
