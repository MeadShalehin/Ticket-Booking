import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';
import 'package:ticket_booking_app/base/widgets/app_double_text.dart';
import 'package:ticket_booking_app/route/route_path.dart';
import 'package:ticket_booking_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_booking_app/screens/search/widgets/find_tickets.dart';
import 'package:ticket_booking_app/screens/search/widgets/ticket_promotion.dart';
import 'package:ticket_booking_app/screens/search/widgets/ticket_tab.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: 40,
          ),
          Text("What are\nyou looking for ?",
              style: AppStyles.headLineStyle1.copyWith(fontSize: 35)),
          const SizedBox(
            height: 20,
          ),
          const TicketTab(
            firstTab: "All Ticket",
            secondTab: "Hotels",
          ),
          SizedBox(
            height: 25,
          ),
          const AppTextIcon(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const SizedBox(height: 20),
          const AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
          const SizedBox(height: 20),
          const FindTickets(),
          const SizedBox(height: 20),
          AppDoubleText(
            bigText: 'Upcoming Flights',
            smallText: 'View all',
            func: () => Navigator.pushNamed(context, RoutePath.allTickets),
          ),
          const SizedBox(height: 15),
          const TicketPromotion(),
        ],
      ),
    );
  }
}
