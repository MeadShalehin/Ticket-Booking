import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/media.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';
import 'package:ticket_booking_app/base/widgets/app_double_text.dart';
import 'package:ticket_booking_app/route/route_path.dart';
import 'package:ticket_booking_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_booking_app/screens/search/widgets/find_tickets.dart';
import 'package:ticket_booking_app/screens/search/widgets/ticket_tab.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
          const TicketTab(),
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
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  width: size.width * 0.42,
                  height: 385,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppStyles.textColor2,
                      boxShadow: [
                        BoxShadow(
                          color: AppStyles.grey ?? Colors.grey,
                          blurRadius: 1,
                          spreadRadius: 2,
                          //offset: Offset(1, 1),
                        )
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AppMedia.planeSit),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12,),
                      Text("20% discount on the early booking of this flight. Don't miss",
                        style: AppStyles.headLineStyle2),

                    ],
                  ),
              ),

              Column(
                children: [
                 Container(
                   width: size. width*0.44,
                   height: 210,
                   decoration: BoxDecoration(
                     color: const Color(0xFF3A8888),
                     borderRadius: BorderRadius.circular(18),
                     ),
                   ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
