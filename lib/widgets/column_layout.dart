import 'package:flutter/material.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  const AppColumnLayout(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle3.copyWith(color: Colors.black),
        ),
        SizedBox(
          height: AppLayout.getHeight(5),
        ),
        Text(
          secondText,
          style:
              Styles.headLineStyle3.copyWith(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
