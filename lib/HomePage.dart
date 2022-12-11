import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_portfolio/CategoryExpandedHorizontal.dart';
import 'package:my_first_portfolio/DiscountPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List listOfImage = ["assets/Rectangle 65.png", "assets/fruits.jpeg"];

  List<Color> listOfColor = [Color(0xff194B38), Colors.white];

  List listOfButtonColor = [
    Color(0xff4CBB5E).withOpacity(0.8),
    Colors.white.withOpacity(0.5)
  ];

  List listOfPercentage = [
    "45%",
    "15%",
  ];

  List listOfTitle = [
    "New Member",
    "New Member",
  ];

  List listOfText = [
    "discount",
    "discount",
  ];

  List listOfButtonTextColor = [
    Colors.white,
    Colors.white,
  ];

  List listOfCategoriesImage = [
    "assets/fruits.png",
    "assets/vegie.png",
    "assets/bread.png",
    "assets/meat.png",
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

  List listOfCategoriesColor = [
    Color(0xffEBF4F1),
    Color(0xffF3F3EA),
    Color(0xffF3E9DD),
    Color(0xffF8ECEC),
    Color(0xffF8F5DE),
    Color(0xffF9E9D2),
  ];

  List listOfPopularImage = [
    "assets/fruits2.png",
    "assets/vegie2.png",
    "assets/bread2.png",
    "assets/meat2.png",
    "assets/cheers.png",
    "assets/drinks.png"
  ];

  List listOfPopularPrice = [
    "\$ 1.8",
    "\$ 1.3",
    "\$ 1.7",
    "\$ 1.0",
    "\$ 1.8",
    "\$ 1.3",
  ];

  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 45,
                height: 45,
                margin: EdgeInsets.only(top: 60, left: 20),
                child: Image.asset(
                  "assets/Rectangle 61.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 65, top: 55),
                  width: 160,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Color(0xff777777)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 33),
                          child: Text(
                            "Yona's Home",
                            style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color(0xff9C9C9C)),
                          )),
                      IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: 450,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 430,
                                          height: 135,
                                          margin: EdgeInsets.only(
                                              left: 30, right: 30, top: 30),
                                          decoration: BoxDecoration(
                                              color: Color(0xffF1F4F3),
                                              border: Border.all(
                                                  color: Color(0xff26AD71),
                                                  width: 3),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Image.asset(
                                                  "assets/Rectangle 78.png",
                                                  fit: BoxFit.contain,
                                                ),
                                                width: 105,
                                                height: 105,
                                                margin:
                                                EdgeInsets.only(left: 20),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      "Yona's Home",
                                                      style:
                                                      GoogleFonts.raleway(
                                                        color:
                                                        Color(0xff4B4B4B),
                                                        letterSpacing: 0.6,
                                                        fontWeight:
                                                        FontWeight.w900,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    margin: EdgeInsets.only(
                                                        left: 15, top: 10),
                                                  ),
                                                  Container(
                                                    width: 200,
                                                    height: 1,
                                                    color: Color(0xffE2E2E2),
                                                    margin: EdgeInsets.only(
                                                        top: 10, left: 15),
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.location_on,
                                                          size: 18,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            left: 15, top: 14),
                                                      ),
                                                      Container(
                                                        width: 180,
                                                        height: 70,
                                                        child: Text(
                                                          "Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta, Indonesia",
                                                          style: GoogleFonts
                                                              .raleway(
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500,
                                                              color: Color(
                                                                  0xff9C9C9C)),
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            left: 5, top: 10),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 430,
                                          height: 135,
                                          margin: EdgeInsets.only(
                                              left: 30, right: 30, top: 20),
                                          decoration: BoxDecoration(
                                              color: Color(0xffF1F4F3),
                                              // border: Border.all(color: Color(0xff26AD71), width: 3),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                          child: Row(
                                            children: [
                                              Container(
                                                child: Image.asset(
                                                  "assets/Rectangle 78 2.png",
                                                  fit: BoxFit.contain,
                                                ),
                                                width: 105,
                                                height: 105,
                                                margin:
                                                EdgeInsets.only(left: 20),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      "John's Home",
                                                      style:
                                                      GoogleFonts.raleway(
                                                        color:
                                                        Color(0xff4B4B4B),
                                                        letterSpacing: 0.6,
                                                        fontWeight:
                                                        FontWeight.w900,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    margin: EdgeInsets.only(
                                                        left: 15, top: 10),
                                                  ),
                                                  Container(
                                                    width: 200,
                                                    height: 1,
                                                    color: Color(0xffE2E2E2),
                                                    margin: EdgeInsets.only(
                                                        top: 10, left: 15),
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Container(
                                                        child: Icon(
                                                          Icons.location_on,
                                                          size: 18,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            left: 15, top: 14),
                                                      ),
                                                      Container(
                                                        width: 180,
                                                        height: 70,
                                                        child: Text(
                                                          "RT.001/RW.006, Cikiwul, Bantargebang, Kota Bks, Jawa Barat 17152, Indonesia",
                                                          style: GoogleFonts
                                                              .raleway(
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500,
                                                              color: Color(
                                                                  0xff9C9C9C)),
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            left: 5, top: 10),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          icon: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Color(0xff777777),
                            size: 20,
                          )),
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(left: 70, top: 55),
                width: 30,
                height: 30,
                child: Image.asset(
                  "assets/Active.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 45),
            child: Text(
              "Hey Yona 👋",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w900,
                  fontSize: 28,
                  color: Color(0xff194B38)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 8),
            child: Text(
              "Find fresh groceries you want",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff9C9C9C)),
            ),
          ),
          Row(
            children: [
              Container(
                width: 295,
                margin: EdgeInsets.only(top: 25, left: 20, right: 20),
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
                margin: EdgeInsets.only(top: 22, left: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff26AD71),
                        Color(0xff32CB4B),
                      ],
                    ),
                    image: DecorationImage(
                      image:
                      AssetImage("assets/fluent_scan-object-20-filled.png"),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 180,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listOfColor.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) =>
                              DiscountPage(
                                image: listOfImage[index],
                                title: listOfTitle[index],
                                text: listOfText[index],
                                percent: listOfPercentage[index],
                                listOfColor: listOfColor[index],
                              )));
                    },
                    child: Container(
                      width: 350,
                      height: 180,
                      margin: EdgeInsets.only(left: 22, top: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        image: DecorationImage(
                            image: AssetImage(listOfImage[index]),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              listOfTitle[index],
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w800,
                                  color: listOfColor[index],
                                  fontSize: 17,
                                  letterSpacing: 0.7),
                            ),
                            margin: EdgeInsets.only(left: 20, top: 20),
                          ),
                          Container(
                            child: Text(
                              listOfText[index],
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w500,
                                  color: listOfColor[index],
                                  fontSize: 12,
                                  letterSpacing: 0.7),
                            ),
                            margin: EdgeInsets.only(left: 20, top: 3),
                          ),
                          Container(
                            child: Text(
                              listOfPercentage[index],
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w800,
                                  color: listOfColor[index],
                                  fontSize: 30,
                                  letterSpacing: 0.7),
                            ),
                            margin: EdgeInsets.only(left: 20, top: 3),
                          ),
                          Container(
                            width: 85,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(100)),
                              color: listOfButtonColor[index],
                            ),
                            margin: EdgeInsets.only(left: 18, top: 10),
                            child: Center(
                                child: Text(
                                  "claim now",
                                  style: GoogleFonts.raleway(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: listOfButtonTextColor[index]),
                                )),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 26),
                child: Text(
                  "Categories",
                  style: GoogleFonts.raleway(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff194B38)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => CategoryHorizontal()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 230, top: 8),
                  child: Text(
                    "See all",
                    style: GoogleFonts.montserrat(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4CBB5E)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 125,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 90,
                      margin: EdgeInsets.only(right: 0, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 70,
                            width: 73,
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(25)),
                              color: listOfCategoriesColor[index],
                            ),
                            child: Image.asset(listOfCategoriesImage[index]),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30, top: 10),
                            child: Text(
                              listOfCategoriesText[index],
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: Color((0xff9C9C9C))),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 26),
            child: Text(
              "Popular",
              style: GoogleFonts.raleway(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff194B38)),
            ),
          ),
          SizedBox(
            height: 112,
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 5),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0),
                  itemCount: listOfPopularImage.length,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      height: 255,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Color(0xffF1F4F3),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.only(left: 130, top: 20),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:  Border.all(
                                  color: Color(0xffE9B1AF),)
                            ),
                            child: Container(
                              width: 20,
                              height: 20,
                              margin: EdgeInsets.only(left: 3, right: 3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffEC534A),
                              ),
                              child: Icon(
                                Icons.favorite, color: Colors.white, size: 13,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 65),
                            child: Image.asset(listOfPopularImage[index]),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 15),
                            child: Text(listOfCategoriesText[index], style: GoogleFonts.raleway(fontWeight: FontWeight.w700, fontSize: 14, color: Color(0xff194B38)),),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 18,
                                width: 40,
                                margin: EdgeInsets.only(left: 20, top: 10),
                                child: Text(listOfPopularPrice[index], style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 18, color: Color((0xff4CBB5E))),),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5, top: 15),
                                child: Text("/kg", style: GoogleFonts.montserrat(fontWeight: FontWeight.w500, fontSize: 11, color: Color((0xff777777))),),
                              ),
                              Container(
                                width: 53,
                                height: 41,
                                margin: EdgeInsets.only(left: 48, top: 17),
                                decoration: BoxDecoration(
                                  gradient:LinearGradient(colors: [Color(0xff26AD71), Color(0xff32CB4B)]),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(30)
                                  ),
                                ),
                                child: Icon(Icons.add, color: Colors.white,)
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 75.0,
          items: <Widget>[
            Icon(
              Icons.home,
              size: 33,
              color: Color(0xff2AB44C),
            ),
            Icon(Icons.search_rounded, size: 33, color: Color(0xff2AB44C)),
            Icon(Icons.shopping_bag_outlined, size: 33, color: Color(0xff2AB44C)),
            Icon(Icons.perm_identity, size: 33, color: Color(0xff2AB44C)),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Color(0xff2AB44C),
          animationCurve: Curves.linearToEaseOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}
