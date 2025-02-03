import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';

class TicketTab extends StatelessWidget {
  const TicketTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppStyles.bluishWhite,
      ),
      child: const Row(
        children: [
          AppTabs(
            tabText: "All tickets",
          ),
          AppTabs(
            tabText: "Hotels",
            tabBorder: true,
            tabColor: true,
          ),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs({
    super.key,
    this.tabText = "",
    this.tabBorder = false,
    this.tabColor = false,
  });

  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.44,
      decoration: BoxDecoration(
        color: tabColor == false ? AppStyles.textColor2 : Colors.transparent, // Fixed here
        borderRadius: tabBorder == false
            ? const BorderRadius.horizontal(left: Radius.circular(20))
            : const BorderRadius.horizontal(right: Radius.circular(20)),
      ),
      child: Center(child: Text(tabText)),
    );
  }
}
