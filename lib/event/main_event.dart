import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:sitravel_app/colors.dart';
import 'package:sitravel_app/event/travel_page_body.dart';
import 'package:sitravel_app/widgets/big_text.dart';

import '../widgets/bottom_navbar.dart';

class MainEventPage extends StatefulWidget {
  const MainEventPage({super.key});

  @override
  State<MainEventPage> createState() => _MainEventPageState();
}

class _MainEventPageState extends State<MainEventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightColor,
        elevation: 0,
        foregroundColor: AppColors.mainColor,
        title: BigText(
          text: "Event",
          color: AppColors.mainColor,
        ),
        actions: [],
      ),
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: AppColors.lightColor,
      body: SingleChildScrollView(
        child: TravelPageBody(),
      ),
    );
  }
}
