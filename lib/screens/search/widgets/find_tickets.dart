import 'package:flutter/cupertino.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.blueColor,
      ),
      child: Center(
        child: Text(
          "Find Tickets",
          style: TextStyle(color: AppStyles.textColor2),
        ),
      ),
    );
  }
}
