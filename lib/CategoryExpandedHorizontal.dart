import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_portfolio/CategoryExpandedVertical.dart';

class CategoryHorizontal extends StatelessWidget {
   CategoryHorizontal({Key? key}) : super(key: key);

  @override

  List listOfCategoriesImage = [
    "assets/fruits2.png",
    "assets/vegie2.png",
    "assets/bread2.png",
    "assets/meat2.png",
    "assets/cheers.png",
    "assets/drinks.png"
  ];

  List listOfCategoriesText = [
    "Fruits",
    "Vegie",
    "Bread",
    "Meat",
    "Cheers",
    "Drinks"
  ];

  List listOfCategoriesItemCount = [
    "112 items",
    "98 items",
    "58 items",
    "52 items",
    "112 items",
    "102 items",
  ];

  List listOfCategoriesColor = [
    Color(0xffEBF4F1),
    Color(0xffF3F3EA),
    Color(0xffF3E9DD),
    Color(0xffF8ECEC),
    Color(0xffF8F5DE),
    Color(0xffF9E9D2),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
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
                child: Image.asset("assets/bag.png"),
                margin: EdgeInsets.only(top: 73, left: 270),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 295,
                margin: EdgeInsets.only(top: 45, left: 20, right: 20),
                child: TextFormField(
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      letterSpacing: 0.7,
                      color: Color(0xff194B38)),
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon:
                    Icon(Icons.search_rounded, color: Color(0xff4CBB5E)),
                    hintText: "Search fresh groceries",
                    hintStyle: GoogleFonts.raleway(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color(0xff194B38)),
                    fillColor: Color(0xff194B38).withOpacity(0.06),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: Color(0xff194B38).withOpacity(0.06)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: Color(0xff194B38).withOpacity(0.06)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: Color(0xff194B38).withOpacity(0.06)),
                    ),
                  ),
                ),
              ),
              Container(
                width: 65,
                height: 65,
                margin: EdgeInsets.only(top: 40, left: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Color(0xff194B38).withOpacity(0.06),
                    image: DecorationImage(
                      image:
                      AssetImage("assets/Group.png"),
                    )),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 26, top: 30),
                child: Text(
                  "All Categories",
                  style: GoogleFonts.raleway(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff194B38)),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CategoryVertical()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 225, top: 20),
                  child: Image.asset("assets/Menu.png"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 664,
            child: Padding(
              padding: EdgeInsets.only(left: 22, right: 22),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 3 / 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                    maxCrossAxisExtent: 215,
                ),
                itemCount: listOfCategoriesImage.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    // margin: EdgeInsets.only(left: 22, right: 22),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: listOfCategoriesColor[index],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset(listOfCategoriesImage[index]),
                          margin: EdgeInsets.only(top: 50, left: 70),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25, top: 25),
                          child: Text(listOfCategoriesText[index], style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff194B38)),),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 25, top: 3),
                          child: Text(listOfCategoriesItemCount[index], style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Color(0xff777777)),),
                        ),
                      ],
                    ),
                  );
                }),
            ),
          ),
        ],
      ),
    );
  }
}
