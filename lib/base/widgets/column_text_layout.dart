import 'package:flutter/cupertino.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';
import 'package:ticket_booking_app/base/widgets/custom_text.dart';

class ColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;

  const ColumnTextLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        CustomText(text: topText, color: AppStyles.textColor3),
        const SizedBox(
          height: 5,
        ),
        CustomText(text: bottomText, color: AppStyles.textColor3),
      ],
    );
  }
}
