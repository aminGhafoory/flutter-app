import 'package:flutter/material.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/utils/app_styles.dart';
import 'package:ticket/widgets/app_double_text.dart';
import 'package:ticket/widgets/icon_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            SizedBox(height: AppLayout.getHeight(40)),
            Text(
              "What are\nyou looking for?",
              style: Styles.headLineStyle1
                  .copyWith(fontSize: AppLayout.getWidth(35)),
            ),
            SizedBox(
              height: AppLayout.getHeight(20),
            ),
            FittedBox(
              child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                  color: const Color(0xfff4f6fd),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7)),
                      width: size.width * 0.44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft:
                                Radius.circular(AppLayout.getHeight(50)),
                            topLeft: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.white,
                      ),
                      child: const Center(child: Text("Airline tickets")),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7)),
                      width: size.width * 0.44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight:
                                Radius.circular(AppLayout.getHeight(50)),
                            topRight: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.transparent,
                      ),
                      child: const Center(child: Text("Hotels")),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: AppLayout.getHeight(25),
            ),
            const IconText(
                icon: Icons.flight_takeoff_rounded, text: "Departure"),
            SizedBox(
              height: AppLayout.getHeight(13),
            ),
            const IconText(icon: Icons.flight_land_rounded, text: "Arrival"),
            SizedBox(
              height: AppLayout.getHeight(13),
            ),
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(12)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                color: const Color(0xd91130ce),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Find Tickets",
                    textAlign: TextAlign.center,
                    style: Styles.headLineStyle2.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: AppLayout.getHeight(40),
            ),
            const AppDoubleTextWidget(
                text: "Upcomming flight", ctaText: "View all"),
            SizedBox(
              height: AppLayout.getHeight(13),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //margin: EdgeInsets.all(AppLayout.getWidth(20)),
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(15),
                      vertical: AppLayout.getWidth(15)),
                  height: AppLayout.getHeight(425),
                  width: size.width * 0.42,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        //width: AppLayout.getWidth(pixels),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(12)),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("images/sit.jpg"))),
                      ),
                      SizedBox(
                        height: AppLayout.getHeight(13),
                      ),
                      Text(
                        "20% discount on the early booking of the flight, Don't miss out this chance",
                        style: Styles.textStyle,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      //alignment: AlignmentDirectional.topEnd,
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: AppLayout.getHeight(210),
                          decoration: BoxDecoration(
                            color: const Color(0xff3ab8b8),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18)),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(15),
                              horizontal: AppLayout.getWidth(15)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Discount\nfor survey",
                                  style: Styles.headLineStyle2.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: AppLayout.getHeight(10)),
                                Text(
                                  "Take the survey about our services and get discount",
                                  style: Styles.headLineStyle2.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )
                              ]),
                        ),
                        Positioned(
                            right: AppLayout.getHeight(-45),
                            top: AppLayout.getHeight(-40),
                            child: Container(
                              padding: EdgeInsets.all(AppLayout.getHeight(30)),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 18, color: Color(0xff189999))),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(13),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15),
                      ),
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(200),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(20)),
                          color: Color(0xffec6545)),
                      child: Column(
                        children: [
                          Text(
                            "Take love\n",
                            style: Styles.headLineStyle1
                                .copyWith(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(13),
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "😍",
                                style: TextStyle(
                                    fontSize: AppLayout.getHeight(38))),
                            TextSpan(
                                text: "🥰",
                                style: TextStyle(
                                    fontSize: AppLayout.getHeight(44))),
                            TextSpan(
                                text: "😘",
                                style: TextStyle(
                                    fontSize: AppLayout.getHeight(38))),
                          ]))
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ]),
    );
  }
}
