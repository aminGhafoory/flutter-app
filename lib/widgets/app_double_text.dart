import 'package:flutter/material.dart';
import 'package:ticket/utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String text;
  final String ctaText;
  const AppDoubleTextWidget(
      {super.key, required this.text, required this.ctaText});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        text,
        style: Styles.headLineStyle2,
      ),
      InkWell(
          onTap: () {
            debugPrint("tapped on inkwell $text");
          },
          child: Text(
            ctaText,
            style: Styles.textStyle.copyWith(color: Colors.grey),
          ))
    ]);
  }
}
