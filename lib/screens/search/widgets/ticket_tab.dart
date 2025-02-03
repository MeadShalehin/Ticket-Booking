import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';

class TicketTab extends StatelessWidget {
  const TicketTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppStyles.bluishWhite,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width*0.44,
            child: const Center(child: Text("Airline Tickets")),
            decoration: const BoxDecoration(
              color: AppStyles.textColor2,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(50))
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width*0.44,
            child: const Center(child: Text("Hotels")),
            decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(right: Radius.circular(50))
            ),
          ),
        ],
      ),
    );
  }
}
