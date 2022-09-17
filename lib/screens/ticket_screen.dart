import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket/screens/ticket_view.dart';
import 'package:ticket/utils/app_info_list.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/utils/app_styles.dart';
import 'package:ticket/widgets/column_layout.dart';
import 'package:ticket/widgets/layout_builder_widget.dart';
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
            const LayoutBuilderWidget(
              sections: 14,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                  vertical: AppLayout.getHeight(20)),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: "Flutter DB",
                        secondText: "Passenger",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: "5221 345678",
                        secondText: "Passport",
                        alignment: CrossAxisAlignment.end,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const LayoutBuilderWidget(sections: 14),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: "364738 28274478",
                        secondText: "Number of E-ticket",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: "B2SG28",
                        secondText: "Booking code",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const LayoutBuilderWidget(sections: 14),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "images/visa.png",
                                scale: 11,
                              ),
                              Text(
                                " *** 2462",
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.black87),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Payment method",
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      const AppColumnLayout(
                        firstText: "\$249.99",
                        secondText: "Price",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const LayoutBuilderWidget(sections: 14),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(15)),
                      bottomRight: Radius.circular(AppLayout.getHeight(15)))),
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getWidth(15)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(21)),
                child: BarcodeWidget(
                  data: "github.com/aminGhafoory/flutter-app",
                  barcode: Barcode.code128(),
                  drawText: false,
                  decoration: null,
                  color: Styles.textColor,
                  width: double.infinity,
                  height: AppLayout.getHeight(70),
                ),
              ),
            ),
            SizedBox(
              height: AppLayout.getHeight(40),
            ),
            Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0]))
          ],
        )
      ]),
    );
  }
}
