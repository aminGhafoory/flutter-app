import 'package:flutter/material.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/utils/app_styles.dart';
import 'package:ticket/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      height: AppLayout.getHeight(200),
      width: size.width * 0.85,
      child: Container(
          margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Styles.ticketTop,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21))),
                ),
                padding: EdgeInsets.only(
                    left: AppLayout.getWidth(16),
                    top: AppLayout.getHeight(10),
                    right: AppLayout.getWidth(16),
                    bottom: AppLayout.getHeight(16)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "${ticket['from']['code']}",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        const Spacer(),
                        const ThickContainer(),
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          (constraints.constrainWidth() ~/ 6),
                                          (index) => Text(
                                                "-",
                                                style: Styles.headLineStyle3
                                                    .copyWith(
                                                        color: Colors.white54),
                                              )));
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.57,
                                  child: const Icon(
                                    Icons.local_airport_rounded,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        )),
                        const ThickContainer(),
                        const Spacer(),
                        Text(
                          "${ticket['to']['code']}",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(height: AppLayout.getHeight(2)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            "${ticket['from']['name']}",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        //
                        Text(
                          "${ticket['flying_time']}",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            "${ticket['to']['name']}",
                            textAlign: TextAlign.end,
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /*
              Orange Part of ticket
              */

              Container(
                color: Styles.ticketBottom,
                child: Row(
                  children: [
                    SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Styles.backgroundColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(AppLayout.getHeight(10)),
                            bottomRight:
                                Radius.circular(AppLayout.getHeight(10)),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: LayoutBuilder(
                      builder: (context, constrains) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              constrains.constrainWidth() ~/ 15,
                              (index) => SizedBox(
                                    width: AppLayout.getWidth(5),
                                    height: AppLayout.getHeight(1),
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                      color: Styles.backgroundColor,
                                    )),
                                  )),
                        );
                      },
                    )),
                    SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Styles.backgroundColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getHeight(10)),
                            bottomLeft:
                                Radius.circular(AppLayout.getHeight(10)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Styles.ticketBottom,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                        bottomRight: Radius.circular(AppLayout.getHeight(21))),
                  ),
                  padding: EdgeInsets.all(AppLayout.getHeight(16)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${ticket['date']}",
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(4),
                          ),
                          Text(
                            "DATE",
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${ticket['departure_time']}",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(4),
                          ),
                          Text(
                            "Departure Time",
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${ticket['number']}",
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(4),
                          ),
                          Text(
                            "Number",
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
