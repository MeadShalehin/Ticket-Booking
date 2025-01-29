import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';
import 'package:ticket_booking_app/base/widgets/big_dot.dart';
import 'package:ticket_booking_app/base/widgets/app_layout_builder.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //print(size.height);

    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          //color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(21), topRight: Radius.circular(21)),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text("NYC",
                    style:
                        AppStyles.headLineStyle3.copyWith(color: Colors.white)),
                Expanded(child: Container()),
                const BigDot(),
                Expanded(
                    child: Stack(
                  children: [
                    SizedBox(
                        child: AppLayoutBuilder(randomDivider:5)
                    ),
                    Center(child: Text("plane"),)
                  ],
                )),
                const BigDot(),
                Expanded(child: Container()),
                Text("LON",
                    style:
                        AppStyles.headLineStyle3.copyWith(color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
