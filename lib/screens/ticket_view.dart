import 'package:flutter/material.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/utils/app_styles.dart';
import 'package:ticket/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      height: 200,
      width: size.width * 0.85,
      child: Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Styles.ticketTop,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)),
                ),
                padding: const EdgeInsets.only(
                    left: 16, top: 10, right: 16, bottom: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "NYC",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        const Spacer(),
                        const ThickContainer(),
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
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
                          "LDN",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text(
                            "New-York",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        Text(
                          "8H 30M",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(
                          width: 100,
                          child: Text(
                            "London",
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
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Styles.backgroundColor,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
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
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                      color: Styles.backgroundColor,
                                    )),
                                  )),
                        );
                      },
                    )),
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Styles.backgroundColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
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
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21)),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1 MAY",
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 4,
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
                            "08:00 AM",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 4,
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
                            "23",
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 4,
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
