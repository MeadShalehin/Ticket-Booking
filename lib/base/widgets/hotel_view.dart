import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';
import 'package:ticket_booking_app/base/widgets/custom_text.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final bool wholeScreen;

  const HotelView({super.key, required this.hotel, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(15),
      width: size.width * 0.85, // Adjust width as needed
      height: 350,
      margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
      decoration: BoxDecoration(
        color: AppStyles.ticketBlue,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //--------------------------------------Image section
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/assets/images/${hotel['image']}"),
              ),
            ),
          ),
          const SizedBox(height: 5),

          //--------------------------------------Hotel place and destination
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel['place'],
              style: AppStyles.headLineStyle1.copyWith(color: AppStyles.khakiColor),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel['destination'],
              style: AppStyles.headLineStyle3.copyWith(color: AppStyles.textColor2),
            ),
          ),
          const SizedBox(height: 5),

          //--------------------------------------Price per night
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "\$${hotel['price']}/night",
              style: AppStyles.headLineStyle1.copyWith(color: AppStyles.khakiColor),
            ),
          ),
        ],
      ),
    );
  }
}
