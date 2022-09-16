import 'package:flutter/material.dart';
import 'package:ticket/screens/ticket_view.dart';
import 'package:ticket/utils/app_info_list.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/utils/app_styles.dart';
import 'package:ticket/widgets/tabs_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(15),
              vertical: AppLayout.getHeight(20)),
          children: [
            SizedBox(height: AppLayout.getHeight(40)),
            Text(
              "Tickets",
              style: Styles.headLineStyle1,
            ),
            SizedBox(height: AppLayout.getHeight(13)),
            const TabWidget(tab1: "Upcomming", tab2: "Previos"),
            SizedBox(height: AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Flutter DB",
                            style: Styles.headLineStyle3,
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(5),
                          ),
                          Text(
                            "Passenger",
                            style: Styles.headLineStyle3,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
