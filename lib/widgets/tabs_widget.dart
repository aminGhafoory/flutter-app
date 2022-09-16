import 'package:flutter/material.dart';
import 'package:ticket/utils/app_layout.dart';

class TabWidget extends StatelessWidget {
  final String tab1;
  final String tab2;

  const TabWidget({super.key, required this.tab1, required this.tab2});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: const Color(0xfff4f6fd),
        ),
        child: Row(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: size.width * 0.44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppLayout.getHeight(50)),
                  topLeft: Radius.circular(AppLayout.getHeight(50))),
              color: Colors.white,
            ),
            child: Center(child: Text(tab1)),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: size.width * 0.44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(AppLayout.getHeight(50)),
                  topRight: Radius.circular(AppLayout.getHeight(50))),
              color: Colors.transparent,
            ),
            child: Center(child: Text(tab2)),
          )
        ]),
      ),
    );
  }
}
