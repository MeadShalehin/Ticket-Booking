import 'package:flutter/cupertino.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String,dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8.8),
      width: size.width * 0.6,
      height: 350,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: AppStyles.ticketBlue,
        borderRadius: BorderRadius.circular(25),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: AppStyles.primaryColor,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                       "assets/assets/images/${hotel['image']}"))),
          ),
          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
                hotel['place'],
              style: AppStyles.headLineStyle1.copyWith(color: AppStyles.khakiColor)),
          ),

          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
                hotel['destination'],
                style: AppStyles.headLineStyle3.copyWith(color: AppStyles.textColor2)),
          ),

          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
                "\$${hotel['price']}/night",
                style: AppStyles.headLineStyle1.copyWith(color: AppStyles.khakiColor)),
          ),
        ],
      ),
    );
  }
}
