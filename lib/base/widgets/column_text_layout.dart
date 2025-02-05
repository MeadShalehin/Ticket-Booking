import 'package:flutter/cupertino.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';
import 'package:ticket_booking_app/base/widgets/custom_text.dart';

class ColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  const ColumnTextLayout({
    super.key,
    required this.topText,
    required this.bottomText,
    required this.alignment,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        CustomText(
          text: topText,
          isColor: isColor,
          style: AppStyles.headLineStyle3.copyWith(
            color: isColor == null ? AppStyles.textColor3 : AppStyles.ticketColor,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        CustomText(
          text: bottomText,
          isColor: isColor,
          style: AppStyles.headLineStyle3.copyWith(
            color: isColor == null ? AppStyles.textColor3 : AppStyles.ticketColor,
          ),
        ),
      ],
    );
  }
}
