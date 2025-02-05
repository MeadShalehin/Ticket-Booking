import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';
import 'package:ticket_booking_app/base/utils/all_json.dart';
import 'package:ticket_booking_app/base/widgets/ticket_view.dart';
import 'package:ticket_booking_app/screens/search/widgets/ticket_tab.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal:20, vertical: 20),
        children: [
          const SizedBox(height: 40,),
          Text("Tickets", style: AppStyles.headLineStyle1,),
          const SizedBox(height: 20,),
          TicketTab(
            firstTab:"Upcoming" ,
            secondTab: "Previous",
          ),
          const SizedBox(height: 20,),

          Container(
            //color: AppStyles.orangeRed,
            padding: EdgeInsets.only(left: 16),
              child: TicketView(ticket: ticketList[0], isColor: true,
                // isColor: true     ------------------------change ticket screen color
              ),
          ),
        ],
      ),

    );
  }
}
