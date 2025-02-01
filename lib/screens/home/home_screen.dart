import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/media.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';
import 'package:ticket_booking_app/base/utils/all_json.dart';
import 'package:ticket_booking_app/base/widgets/app_double_text.dart';
import 'package:ticket_booking_app/base/widgets/ticket_view.dart';
import 'package:ticket_booking_app/route/route_path.dart';
import 'package:ticket_booking_app/screens/home/widgets/hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        //for scrollable #listview
        body: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Good Morning",
                                style: AppStyles.headLineStyle2),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("Book Tickets",
                                style: AppStyles.headLineStyle1)
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(AppMedia.logo)),
                          ),
                        ),
                      ]),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFFF4F6FD),
                    ),
                    child: const Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_search_regular,
                            color: Color(0xFFBFC205)),
                        Spacer(), // Push the text towards the center
                        Text("Search"),
                        Spacer(),

                        /*Expanded(
                      child: Center(
                        child: Text("Search"),
                      )
                    )*/
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  AppDoubleText(
                    bigText: 'Upcoming Flights',
                    smallText: 'View all',
                    func: () =>
                        Navigator.pushNamed(context, RoutePath.allTickets),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: ticketList
                            .take(3)
                            .map((singleTicket) =>
                                TicketView(ticket: singleTicket))
                            .toList(),
                      )),
                  const SizedBox(height: 40),
                  AppDoubleText(
                    bigText: 'Hotels',
                    smallText: 'View all',
                    func: () {
                      print("hello there");
                    },
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: hotelList
                            .take(2)
                            .map((singleHotel) => Hotel(hotel: singleHotel))
                            .toList(),
                      ))
                ],
              ),
            ),
            // #listview items
          ],
        ));
  }
}
