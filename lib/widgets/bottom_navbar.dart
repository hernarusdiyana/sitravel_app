import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sitravel_app/book/main_book_page.dart';
import 'package:sitravel_app/saved/main_saved_page.dart';

import '../home/main_travel_page.dart';
import '../main.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final items = <Widget>[
    Icon(
      Icons.people,
      size: 30,
    ),
    Icon(
      Icons.person,
      size: 30,
    ),
    Icon(
      Icons.add,
      size: 30,
    ),
    Icon(
      Icons.search_outlined,
      size: 30,
    )
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: Scaffold(
        backgroundColor: Colors.blue,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          items: items,
          index: index,
          onTap: (selctedIndex) {
            setState(() {
              index = selctedIndex;
            });
          },
          height: 70,
          backgroundColor: Colors.transparent,
          animationDuration: const Duration(milliseconds: 300),
          // animationCurve: ,
        ),
        body: Container(
            color: Colors.blue,
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: getSelectedWidget(index: index)),
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const MainTravelPage();
        break;
      case 1:
        widget = const MainSavedPage();
        break;
      default:
        widget = const MainBookPage();
        break;
    }
    return widget;
  }
}


// class BottomNavbar extends StatelessWidget {
//   const BottomNavbar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//       padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//       height: 70,
//       color: Colors.white,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           BottomNavItem(
//             svgScr: "assets/icons/home.svg",
//             title: "Home",
//             press: () {},
//             isActive: true,
//           ),
//           BottomNavItem(
//             svgScr: "assets/icons/bookmark.svg",
//             title: "Home",
//             press: () {},
//           ),
//           BottomNavItem(
//             svgScr: "assets/icons/ticket.svg",
//             title: "Home",
//             press: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }
