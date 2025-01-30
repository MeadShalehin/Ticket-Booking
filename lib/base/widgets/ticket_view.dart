import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';
import 'package:ticket_booking_app/base/widgets/big_circle.dart';
import 'package:ticket_booking_app/base/widgets/big_dot.dart';
import 'package:ticket_booking_app/base/widgets/app_layout_builder.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  _TicketViewState createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 5), // Animation duration
      vsync: this,
    );

    _animation = Tween<double>(begin: -50, end: 250).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));

    _controller.repeat(); // Use `repeat` instead of reset for continuous movement
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        child: Column(
          children: [
            Container(

              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21), topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  //show departure and destination with icons
                  Row(
                    children: [
                      Text("NYC",
                          style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),

                      const BigDot(),

                      Expanded(
                          child: Stack(
                            children: [
                              const SizedBox(
                                  height: 24,
                                  child: AppLayoutBuilder(randomDivider: 5)
                              ),
                              AnimatedBuilder(
                                animation: _animation,
                                builder: (context, child) {
                                  return Positioned(
                                    left: _animation.value, // Moves left to right
                                    child: Transform.rotate(
                                      angle: 1.5708, // 90° for plane icon
                                      child: Icon(Icons.local_airport_rounded, color: Colors.white),
                                    ),
                                  );
                                },
                              ),
                            ],
                          )),

                      const BigDot(),

                      Expanded(child: Container()),
                      Text("LDN",
                          style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),
                    ],
                  ),//show departure and destination name with time
                  const SizedBox(height: 3),


                  Row(
                    children: [
                      Text("New-York",
                          style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),

                      Text("8H 30M",
                          style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),

                      Expanded(child: Container()),
                      Text("London",
                          style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),
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
                BigCircle(),
                  Expanded(child: Container()),
                  BigCircle(),
                ],
              ),

            ),


            Container(

              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketPeachPuff,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  //show departure and destination with icons
                  Row(
                    children: [
                      Text("NYC",
                          style: AppStyles.headLineStyle3.copyWith(color: Colors.black54)),
                      Expanded(child: Container()),

                      const BigDot(),

                      Expanded(
                          child: Stack(
                            children: [
                              const SizedBox(
                                  height: 24,
                                  child: AppLayoutBuilder(randomDivider: 5)
                              ),
                              AnimatedBuilder(
                                animation: _animation,
                                builder: (context, child) {
                                  return Positioned(
                                    left: _animation.value, // Moves left to right
                                    child: Transform.rotate(
                                      angle: 1.5708, // 90° for plane icon
                                      child: Icon(Icons.local_airport_rounded, color: Colors.black54),
                                    ),
                                  );
                                },
                              ),
                            ],
                          )),

                      const BigDot(),

                      Expanded(child: Container()),
                      Text("LDN",
                          style: AppStyles.headLineStyle3.copyWith(color: Colors.black54)),
                    ],
                  ),//show departure and destination name with time
                  const SizedBox(height: 3),


                  Row(
                    children: [
                      Text("New-York",
                          style: AppStyles.headLineStyle3.copyWith(color: Colors.black54)),
                      Expanded(child: Container()),

                      Text("8H 30M",
                          style: AppStyles.headLineStyle3.copyWith(color: Colors.black54)),

                      Expanded(child: Container()),
                      Text("London",
                          style: AppStyles.headLineStyle3.copyWith(color: Colors.black54)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}


//////---------------fixed plane------------------------///

/*
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
        margin: EdgeInsets.only(right: 20),
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
                        const SizedBox(
                            height: 24,
                            child: AppLayoutBuilder(randomDivider: 5)
                        ),
                        Center(
                          child: Transform.rotate(angle: 1.5708, //0.7854 for 45°
                              child: Icon(Icons.local_airport_rounded, color: Colors.white,)),),
                      ],
                    )),

                const BigDot(), //BIG dot °

                Expanded(child: Container()),
                Text("LDN",
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
*/

