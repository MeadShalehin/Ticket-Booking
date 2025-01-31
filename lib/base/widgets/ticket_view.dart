import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';
import 'package:ticket_booking_app/base/widgets/big_circle.dart';
import 'package:ticket_booking_app/base/widgets/big_dot.dart';
import 'package:ticket_booking_app/base/widgets/app_layout_builder.dart';
import 'package:ticket_booking_app/base/widgets/column_text_layout.dart';
import 'package:ticket_booking_app/base/widgets/custom_text.dart';
import 'package:ticket_booking_app/base/widgets/icons_animation.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

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
                  //--------------------------------------blue part of the ticket
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
                            const CustomText(
                              text: "NYC",
                              style: AppStyles.headLineStyle3,
                              color: AppStyles.textColor2,
                            ),

                            Expanded(child: Container()),

                            const BigDot(),

                            Expanded(
                              child: Stack(
                                children: [
                                  const SizedBox(
                                    height: 24,
                                    child: AppLayoutBuilder(
                                      randomDivider: 7,
                                      width: 3,
                                    ),
                                  ),
                                  IconAnimation(), // <-- Using the animation widget
                                ],
                              ), // moving icon

                              //-------------------------------------------------------fixed icon
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

                            //----------------------------------- CustomText(text: "LDN", style: AppStyles.headLineStyle3, color: AppStyles.textColor2,)

                            CustomText(
                                //---------------will work same!
                                text: "LDN",
                                style: AppStyles.headLineStyle3
                                    .copyWith(color: AppStyles.textColor2))
                          ],
                        ),
                        //-----------------------------------------show departure and destination name with time
                        const SizedBox(height: 3),
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: const CustomText(
                                text: "New-York",
                                style: AppStyles.headLineStyle4,
                              ),
                            ),
                            Expanded(child: Container()),
                            CustomText(
                              text: "08H 30M",
                              style: AppStyles.headLineStyle4,
                            ),
                            Expanded(child: Container()),
                            SizedBox(
                              width: 100,
                              child: const CustomText(
                                text: "London",
                                align: TextAlign.end,
                                style: AppStyles.headLineStyle4,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //--------------------------------------circles and dot
                  Container(
                    height: 20,
                    color: AppStyles.ticketPeachPuff,
                    child: const Row(
                      children: [
                        BigCircle(
                          isRight: false,
                        ),
                        Expanded(
                            child: AppLayoutBuilder(
                          randomDivider: 15,
                          width: 5,
                        )),
                        BigCircle(
                          isRight: true,
                        ),
                      ],
                    ),
                  ),

                  //--------------------------------------peach part of the ticket
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
                        //--------------------------------------show departure & destination with icon
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ColumnTextLayout(
                              topText: "1 May",
                              bottomText: "Date",
                              alignment: CrossAxisAlignment.start,
                            ),
                            ColumnTextLayout(
                              topText: "08:00 AM",
                              bottomText: "Departure Time",
                              alignment: CrossAxisAlignment.center,
                            ),
                            ColumnTextLayout(
                              topText: "23",
                              bottomText: "Number",
                              alignment: CrossAxisAlignment.end,
                            ),
                          ],
                        ),
                        //------------------------------------------------show departure and destination name with time
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
