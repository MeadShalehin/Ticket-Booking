import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/utils/all_json.dart';
import 'package:ticket_booking_app/base/widgets/hotel_view.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('All Hotels')),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: hotelList
                  .map((singleTicket) =>
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: HotelView(
                      hotel: singleTicket,
                      wholeScreen: true,
                    ),
                  ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}