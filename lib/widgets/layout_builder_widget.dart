import 'package:flutter/material.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/utils/app_styles.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  const LayoutBuilderWidget({super.key, this.isColor, required this.sections});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              constrains.constrainWidth() ~/ sections,
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
    );
  }
}
