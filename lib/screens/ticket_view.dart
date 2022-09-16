import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/utils/app_styles.dart';
import 'package:ticket/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 167 : 169),
      width: size.width * 0.85,
      child: Container(
          margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: isColor == null ? Styles.ticketTop : Colors.white,
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
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3
                                  .copyWith(color: Colors.black),
                        ),
                        const Spacer(),
                        ThickContainer(isColor: isColor),
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
                                                style: isColor == null
                                                    ? Styles.headLineStyle3
                                                        .copyWith(
                                                            color:
                                                                Colors.white54)
                                                    : Styles.headLineStyle3,
                                              )));
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                  angle: 1.57,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : const Color(0xff8accf7),
                                  )),
                            ),
                          ],
                        )),
                        ThickContainer(
                          isColor: isColor,
                        ),
                        const Spacer(),
                        Text(
                          "${ticket['to']['code']}",
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3
                                  .copyWith(color: Colors.black),
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
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                        ),
                        //
                        Text(
                          "${ticket['flying_time']}",
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3
                                  .copyWith(color: Colors.black),
                        ),
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(
                            "${ticket['to']['name']}",
                            textAlign: TextAlign.end,
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
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
                color: isColor == null ? Styles.ticketBottom : Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: isColor == null
                              ? Styles.backgroundColor
                              : Colors.white,
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
                                      color: isColor == null
                                          ? Styles.backgroundColor
                                          : Colors.white,
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
                          color: isColor == null
                              ? Styles.backgroundColor
                              : Colors.white,
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
                    color: isColor == null ? Styles.ticketBottom : Colors.white,
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
                            style: Styles.headLineStyle4.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Colors.black),
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(4),
                          ),
                          Text(
                            "Date",
                            style: Styles.headLineStyle4.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Styles.headLineStyle3.color),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${ticket['departure_time']}",
                            style: Styles.headLineStyle3.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Colors.black),
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(4),
                          ),
                          Text(
                            "Departure Time",
                            style: Styles.headLineStyle4.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Styles.headLineStyle3.color),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${ticket['number']}",
                            style: Styles.headLineStyle4.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Colors.black),
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(4),
                          ),
                          Text(
                            "Number",
                            style: Styles.headLineStyle4.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Styles.headLineStyle3.color),
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
