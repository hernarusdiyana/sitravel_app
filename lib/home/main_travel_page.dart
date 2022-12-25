import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sitravel_app/home/travel_page_body.dart';
import 'package:sitravel_app/pages/splash_screen.dart';
import 'package:sitravel_app/widgets/big_text.dart';

import '../widgets/menu_card.dart';
import '../widgets/bottom_navbar.dart';
import '../colors.dart';
// import '../widgets/bottom_navbar.dart';

class MainTravelPage extends StatefulWidget {
  const MainTravelPage({super.key});

  @override
  State<MainTravelPage> createState() => _MainTravelPageState();
}

class _MainTravelPageState extends State<MainTravelPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(10, 32, 84, 1),
            elevation: 0,
            title: const Text(
              'SiTravel',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            actions: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                alignment: Alignment.center,
                height: 52,
                width: 52,
                decoration: BoxDecoration(
                  color: Color.fromARGB(126, 27, 56, 122),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  "assets/icons/user.svg",
                  color: Colors.white,
                ),
              ),
            ],
          ),
          // bottomNavigationBar: BottomNavBar(),
          backgroundColor: Colors.white,
          body: Stack(
            children: <Widget>[
              Container(
                height: size.height * .35,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(10, 32, 84, 1),
                  image: DecorationImage(
                    alignment: Alignment.bottomCenter,
                    image: AssetImage("assets/images/banner1.jpg"),
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Mau ngapain hari ini?",
                              icon: SvgPicture.asset("assets/icons/user.svg"),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: .90,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          children: <Widget>[
                            MenuCard(
                              title: "Hotel",
                              svgSrc: "assets/icons/hotel.png",
                              press: () {
                                print("Tapped!!!");
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => new EventPage()));
                              },
                            ),
                            MenuCard(
                              title: "Wisata",
                              svgSrc: "assets/icons/wisata.png",
                              press: () {},
                            ),
                            MenuCard(
                              title: "Event",
                              svgSrc: "assets/icons/event.png",
                              press: () {},
                            ),
                            MenuCard(
                              title: "Kuliner",
                              svgSrc: "assets/icons/kuliner.png",
                              press: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key? key,
    required this.svgScr,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgScr, color: Color.fromRGBO(10, 32, 84, 1),
            // color: isActive ? kActiveIconColor : kTextColor,
          ),
        ],
      ),
    );
  }
}
