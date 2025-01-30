import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/media.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';
import 'package:ticket_booking_app/base/widgets/app_double_text.dart';
import 'package:ticket_booking_app/base/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                  const SizedBox(height: 40),
                  AppDoubleText(bigText: 'Upcoming Flights', smallText: 'View all'),
                  const SizedBox(height: 20),
                  TicketView()
                ],
              ),
            ),
            // #listview items
          ],
        ));
  }
}


///-----------------------------------moving plane--------------------------////


/*


import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/media.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';
import 'package:ticket_booking_app/base/widgets/app_double_text.dart';
import 'package:ticket_booking_app/base/widgets/ticket_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _planeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 2), // Duration of animation
      vsync: this,
    );

    _planeAnimation = Tween<double>(
      begin: 140, // Starts from the end of "S" in "Book Tickets"
      end: 270,   // Moves towards the logo
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut, // Smooth movement
    ));

    _controller.forward(); // Start animation on page load
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: AppStyles.headLineStyle2),
                        const SizedBox(height: 5),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Text("Book Tickets", style: AppStyles.headLineStyle1),

                            AnimatedBuilder(
                              animation: _planeAnimation,
                              builder: (context, child) {
                                return Positioned(
                                  left: _planeAnimation.value, // Moves from "S" to the logo
                                  top: 5, // Slightly above text
                                  child: Transform.rotate(
                                    angle: 1.5708, // 90° rotation
                                    child: Icon(
                                      Icons.local_airport_rounded,
                                      color: Colors.blue,
                                      size: 34,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),


                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage(AppMedia.logo)),
                      ),
                    ),


                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                      Spacer(),
                      Text("Search"),
                      Spacer(),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(bigText: 'Upcoming Flights', smallText: 'View all'),
                TicketView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/



