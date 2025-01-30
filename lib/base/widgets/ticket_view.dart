import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';
import 'package:ticket_booking_app/base/widgets/big_circle.dart';
import 'package:ticket_booking_app/base/widgets/big_dot.dart';
import 'package:ticket_booking_app/base/widgets/app_layout_builder.dart';
import 'package:ticket_booking_app/base/widgets/icon_animation.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //print(size.height);

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppStyles.ticketBlue,
                      //color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(21),
                          topRight: Radius.circular(21)),
                    ),
                    child: Column(
                      children: [
                        //show departure
                        Row(
                          children: [
                            Text("NYC",
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                            Expanded(child: Container()),

                            const BigDot(),

                            Expanded(
                              child: Stack(
                                children: [
                                  const SizedBox(
                                    height: 24,
                                    child: AppLayoutBuilder(randomDivider: 5),
                                  ),
                                  IconAnimation(), // <-- Using the animation widget
                                ],
                              ), // moving icon

                              //fixed icon
                              /*Stack(
                                children: [
                                  const SizedBox(
                                      height: 24,
                                      child:
                                          AppLayoutBuilder(randomDivider: 5)),
                                  Center(
                                    child: Transform.rotate(
                                        angle: 1.5708, //0.7854 for 45°
                                        child: Icon(
                                          Icons.local_airport_rounded,
                                          color: Colors.white,
                                        )),
                                  ),
                                ],
                              ),*/
                            ),

                            const BigDot(), //BIG dot °

                            Expanded(child: Container()),
                            Text("LDN",
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                        //show departure and destination name with time
                        const SizedBox(height: 3),
                        Row(
                          children: [
                            Text("New-York",
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                            Expanded(child: Container()),
                            Text("8H #3M",
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                            Expanded(child: Container()),
                            Text("London",
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 20,
                    color: AppStyles.ticketPeachPuff,
                    child: Row(
                      children: [
                        BigCircle(
                          isRight: false,
                        ),
                        Expanded(child: Container()),
                        BigCircle(
                          isRight: true,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppStyles.ticketPeachPuff,
                      //color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21)),
                    ),
                    child: Column(
                      children: [
                        //show departure
                        Row(
                          children: [
                            Text("NYC",
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                            Expanded(child: Container()),

                            const BigDot(),

                            Expanded(
                                child: Stack(
                              children: [
                                const SizedBox(
                                    height: 24,
                                    child: AppLayoutBuilder(randomDivider: 5)),
                                Center(
                                  child: Transform.rotate(
                                      angle: 1.5708, //0.7854 for 45°
                                      child: Icon(
                                        Icons.local_airport_rounded,
                                        color: Colors.black,
                                      )),
                                ),
                              ],
                            )),

                            const BigDot(), //BIG dot °

                            Expanded(child: Container()),
                            Text("LDN",
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                        //show departure and destination name with time
                        const SizedBox(height: 3),
                        Row(
                          children: [
                            Text("New-York",
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                            Expanded(child: Container()),
                            Text("8H #0M",
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                            Expanded(child: Container()),
                            Text("London",
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

