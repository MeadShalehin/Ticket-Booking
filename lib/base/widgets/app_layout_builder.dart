import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int randomDivider;
  final double width;

  const AppLayoutBuilder({super.key, required this.randomDivider, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
                (index) => SizedBox(
              width: width,
              height: 2,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppStyles.textColor2, // Applying textColor3 here
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
