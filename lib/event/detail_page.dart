import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:readmore/readmore.dart';
import 'package:sitravel_app/colors.dart';
import 'package:sitravel_app/main.dart';
import 'package:sitravel_app/widgets/package_card.dart';
import 'package:sitravel_app/widgets/small_text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../home/travel_page_body.dart';
import '../widgets/big_text.dart';
import '../widgets/bottom_navbar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: AppColors.mainColor,
        title: BigText(
          text: "Detail Event",
          color: AppColors.mainColor,
        ),
        actions: [],
      ),

      // bottomNavigationBar: BottomNavBar(),
      backgroundColor: AppColors.lightColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * .30,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                image: DecorationImage(
                  image: AssetImage("assets/images/travel1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 14, 20, 10),
              child: Column(
                children: [
                  Container(
                    // margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Bismillah Bali",
                          color: AppColors.textColor,
                        ),
                        Container(
                          width: size.width * .35,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SmallText(
                                text: "Mulai dari",
                                color: Colors.white70,
                              ),
                              BigText(
                                text: "1.900.000",
                                color: Colors.white,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(children: [
                          new TextSpan(
                            text: "Ubud, Bali",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                            ),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = (() async {
                                final url =
                                    'https://goo.gl/maps/mu5nYde4VXrRZZmH6';
                                await launch(
                                  url,
                                  forceSafariVC: false,
                                );
                              }),
                          ),
                        ]),
                      ),
                    )
                  ]),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            BigText(
                              text: "Tentang",
                              color: AppColors.textColor,
                            ),
                          ],
                        ),
                        // RichText(
                        //   overflow: TextOverflow.ellipsis,
                        //   maxLines: 4,
                        //   text: const TextSpan(
                        //       style: TextStyle(color: Colors.black45),
                        //       text:
                        //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
                        //   selectionRegistrar:
                        //       SelectionContainer.maybeOf(context),
                        //   selectionColor: Colors.black,
                        // ),
                        ReadMoreText(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum ',
                          style: TextStyle(
                              fontSize: 12, color: AppColors.textColor2),
                          trimLines: 3,
                          colorClickableText: Colors.pink,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Show more',
                          trimExpandedText: 'Show less',
                          moreStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            BigText(
                              text: "Deskripsi",
                              color: AppColors.textColor,
                            ),
                          ],
                        ),
                        // RichText(
                        //   overflow: TextOverflow.ellipsis,
                        //   maxLines: 4,
                        //   text: const TextSpan(
                        //       style: TextStyle(color: Colors.black45),
                        //       text:
                        //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
                        //   selectionRegistrar:
                        //       SelectionContainer.maybeOf(context),
                        //   selectionColor: Colors.black,
                        // ),
                        ReadMoreText(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum ',
                          style: TextStyle(
                              fontSize: 12, color: AppColors.textColor2),
                          trimLines: 3,
                          colorClickableText: Colors.pink,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Show more',
                          trimExpandedText: 'Show less',
                          moreStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  // PacakgeCard
                  Column(
                    children: [
                      PackageCard(
                        packageName: "Premium",
                        packagePrice: 300000,
                        benefit: "- lorem Ipsum\n"
                            "- lorem Ipsum\n"
                            "- lorem Ipsum\n",
                        press: () {
                          print("Tapped!!");
                        },
                      ),
                      PackageCard(
                        packageName: "Medium",
                        packagePrice: 200000,
                        benefit: "- lorem Ipsum\n"
                            "- lorem Ipsum\n"
                            "- lorem Ipsum\n",
                        press: () {
                          print("Tapped!!");
                        },
                      ),
                      PackageCard(
                        packageName: "Standard",
                        packagePrice: 100000,
                        benefit: "- lorem Ipsum\n"
                            "- lorem Ipsum\n"
                            "- lorem Ipsum\n",
                        press: () {
                          print("Tapped!!");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
